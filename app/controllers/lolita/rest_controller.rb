class Lolita::RestController < ApplicationController
  include Lolita::ControllerAdditions

  include Lolita::Hooks
  add_hook :before_new, :after_new, :before_create,:after_create,:before_edit,:after_edit
  add_hook :before_update,:after_update,:before_destroy,:after_destroy,:before_index,:after_index
  add_hook :before_build_resource, :after_build_resource
  

  layout "lolita/application"
  
  def new
    self.run(:before_new)
    authorization_proxy.authorize!(:create,self.resource_class)
    build_resource
    show_form
  end

  def create
    self.run(:before_create)
    authorization_proxy.authorize!(:create,self.resource_class)
    build_resource
    save_and_redirect
  end

  def edit
    self.run(:before_edit)
    get_resource
    authorization_proxy.authorize!(:update,self.resource)
    show_form
  end
  
  def update
    self.run(:before_update)
    get_resource
    authorization_proxy.authorize!(:update,self.resource)
    if self.resource
      self.resource=resource_with_attributes(self.resource,resource_attributes)
      save_and_redirect

    end
  end

  def destroy
    self.run(:before_destroy)
    get_resource
    authorization_proxy.authorize!(:destroy, self.resource)
    if self.resource && self.resource.destroy
      flash[:notice] = ::I18n.t "lolita.shared.destroy_notice"
    else
      flash[:alert] = ::I18n.t "lolita.shared.destroy_alert"
    end
    self.run(:after_destroy)
    redirect_to lolita_resources_path
  end

  def index
    self.run(:before_index)
    debugger
    authorization_proxy.authorize!(:read,self.resource_class)
    show_index
    self.run(:after_index)
  end

  private

  def show_form
    build_response_for(:tabs)
    self.run(:"after_#{params[:action]}")
    if request.xhr?
      render "/lolita/rest/form", :layout => false
    else
      render "/lolita/rest/form"
    end
  end

  def build_index_response
    build_response_for(:list,:page => page)
  end
  
  def show_index()
    respond_to do |format|
      format.html do
        build_index_response
        render "/lolita/rest/index", :layout => !request.xhr?
      end
      format.js do 
        build_index_response
        render "/lolita/rest/index", :layout => false
      end
      format.json do
        render :json => page
      end
    end
  end
  
  def save_and_redirect
    respond_to do |format|
      if self.resource.save
        self.resource.reload
        format.html{ respond_html_200}
        format.json{ respond_json_200}
      else
        format.html{ respond_html_400 }
        format.json{ respond_json_400 }
      end
    end
  end
  
  def respond_html_200
    response.headers["Validation"] = 'true'
    notice(::I18n.t "lolita.shared.save_notice")
    
    if next_action == "index"
      redirect_to lolita_resources_path
    elsif next_action == "edit"
      redirect_to edit_lolita_resource_path(:id => resource.id)
    elsif next_action == "new"
      redirect_to new_lolita_resource_path
    end
  end

  def respond_html_400
    build_response_for(:tabs)
    response.headers["Validation"] = 'false'
    alert(::I18n.t "lolita.shared.save_alert")
    show_form
  end

  def respond_json_200
    respond_json(200)
  end

  def respond_json_400
    respond_json(400)
  end

  def respond_json(status)
    self.run(:"after_#{params[:action]}")
    render :status=>status, :json=>self.resource
  end

  def to_list
    builder=build_response_for(:list,:page=>page)
    render :index
    #render_component *builder
  end

  def next_action
    if params[:button_pressed] == "save"
      "edit"
    elsif params[:button_pressed] == "save&close"
      "index"
    elsif params[:button_pressed] == "save&new"
      "new"
    end
  end

  def page
    if nested_list?
      nested_resource_class(:list).paginate(params[:page],request)
    else
      resource_class.lolita.list.paginate(params[:page],request)
    end
  end
end
