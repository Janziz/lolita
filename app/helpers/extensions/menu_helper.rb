# coding: utf-8
module Extensions::MenuHelper
  def menu_item_link_to (item,current_branch,options={})
    picture=item.pictures.main_or_first if options[:image]
    title=options[:image] && picture ? image_tag(picture.picture.url) : item.name
    hsh={:class=>"active"} if current_branch.include?(item)
    link_to(h(title),item.link,hsh)
  end

  def get_current_menu_branch (menu_name)
    curs_in_menu = get_current_menu_items(menu_name)
    curs_in_menu.inject([]){|result, item| result += item.self_and_ancestors}.uniq
  end

  def get_current_menu_items(menu_name)
    id = get_id || -1
    menu=Admin::Menu.find_by_menu_name(menu_name)
    type = params[:controller].camelize
    actions=Admin::Action.find_by_controller_and_action("/#{params[:controller]}",params[:action])
    conditions = ['((menuable_type=? AND menuable_id=?) OR
                    (menuable_type="Admin::Action" AND menuable_id IN (?))) AND is_published=1',
      type,id,actions]
    menu_items = if menu
      menu.menu_items.find(:all, :conditions=>conditions)
    else
      Admin::MenuItem.find_in_branch(menu_name, conditions)
    end
    if menu_items.empty?
      menu_items = begin
        object=type.constantize
        if object.respond_to?(:find_related_menu_item)
          object.find_related_menu_item(menu_name,id)
        else
          []
        end #FIXME vajag iestrādāt lai meklē arī brānčā kas nav menu bet gan menu_items
      rescue #table-less objects, e.g. start page
        menu ? [menu.menu_items.first.root] : []
      end
    end
    if menu_items.empty?
      menu_items = session["last_selected_#{menu_name.downcase}_item"] unless session["last_selected_#{menu_name.downcase}_item"].nil?
    else
      session["last_selected_#{menu_name.downcase}_item"] = menu_items
    end
    menu_items
  end

  def get_menu_editors(id,namespace,object,menu_id)
    if Admin::Menu.exists?(menu_id)
      menu=Admin::Menu.find(menu_id)
      menu_type=menu.menu_type
    end
    menu_item=Admin::MenuItem.find_by_id(id)
    case menu_type
    when 'app',menu.menu_name=='admin'
      admin_menu_select menu_item,namespace,menu_id
    when 'web'
      content_menu_select menu_item,namespace,menu_id
      #    when 'public_web'
      #      public_web_menu_select menu_item,namespace,menu_id
    end
  end

  def menu_select_name namespace, method="table"
    namespace ?  "object[#{namespace}][#{method}]" : "object[#{method}]"
  end

  def admin_menu_select menu_item,namespace,menu_id
    #action_name=namespace ?  "object[#{namespace}][action]" : "object[action]"
    if menu_item && menu_item.menuable_type=='Admin::Action'
      current_table= menu_item.menuable.controller ? menu_item.menuable.controller : ""
      current_action=menu_item.menuable.action
    end
    if current_table
      begin
        controller="#{current_table}_controller".camelize.constantize
        allowed_actions=Admin::Action.actions_for_controller controller.name.underscore.gsub("_",'/').gsub('/controller','')
      rescue
        allowed_actions=[[t(:"fields.not selected"),-1]]
      end
    else
      allowed_actions=[[t(:"fields.not selected"),-1]]
    end
    render :partial=>"admin_menu_select", :locals=>{
      :table_options=>options_for_select(get_tables_for_menu(menu_id,{:all=>true}),current_table),
      :action_options=>options_for_select(allowed_actions,current_action),
      :namespace=>namespace,
      :current_item_id=>menu_item ? menu_item.id : 0
    }
  end

  def content_menu_select menu_item,field_name,menu_id
    current=nil
    if menu_item
      current=if menu_item.menuable_type=="Admin::Action"
        action_obj=Admin::Action.find_by_id(menu_item.menuable_id)
        if action_obj && action_obj.controller
          allowed_actions=Admin::Action.actions_for_controller action_obj.controller
        end
        0
      elsif menu_item.menuable_type=="Url"
        url_obj=Url.find_by_id(menu_item.menuable_id)
        url=url_obj.name if url_obj
        1
      elsif menu_item.menuable_type!="Admin::MenuItem"
        meta_obj=MetaData.by_metaable(menu_item.menuable_id,menu_item.menuable_type)
        meta_url=meta_obj.url if meta_obj
        2
      end
    end
    render :partial=>"admin/menu_item/content_menu_editor", :locals=>{
      :url=>url,
      :meta_url=>meta_url,
      :current=>current,
      :admin_menu=>{
        :actions=>options_for_select(allowed_actions||[],action),
        :models=>options_for_select(get_tables_for_menu(menu_id),current_model),
        :menu_item_id=>menu_item ? menu_item.id : 0
      }
    }
    # if
    #    current_table=menu_item.menuable_type.underscore if menu_item && menu_item.menuable_type
    #    incl=[['Sākums','home']]
    #    select_tag(menu_select_name(namespace),options_for_select(get_tables_for_menu(menu_id,{:simple=>true,:include=>incl}),current_table),:class=>"select")
  end

  # If block given return struct Object else returns Array
  # Input:
  #   name - branch_name
  #   options -
  #     :show_hidden - show hidden menu items, default not shown
  # Output:
  #   :name - String
  #   :link - String (url, href ...)
  #   :is_active - Boolean
  #   :menu_item - Admin::MenuItem
  #
  # Example:
  #  items = []
  #  render_menu "top_menu" do |item|
  #    items << content_tag("li", link_to(item.name,item.link), :class => item.is_active ? "active" : nil)
  #  end
  #  content_tag("ul",items.join("\n"),options)
  #
  def render_menu name, options = {}
    root_item = Admin::MenuItem.find_by_branch_name(name)
    current_branch = get_current_menu_branch(name)
    items = [] unless block_given?
    new_item = Struct.new(:name,:link,:is_active,:menu_item)
    root_item.children.each do |item|
      unless (options[:show_hidden] && !item.is_published)
        if block_given?
          yield new_item.new(item.name,item.link, current_branch.include?(item) ? :active : nil, item)
        else
          items << item
        end
      end
    end if root_item && root_item.children
    items unless block_given?
  end

  def menu_splitter
    '<span >|&nbsp;</span>'
  end
end