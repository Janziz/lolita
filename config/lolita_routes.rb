ActionController::Routing::Routes.draw do |map|
  #  map.resources :accesses, :controller=>"admin/access",:only=>[:index],
  #    :member=>{:list=>:any,:current_roles=>:get}
  #  map.resources :roles, :controller=>"admin/role",:except=>[:show],
  #    :member=>{
  #      :list=>:any
  #    } do |role|
  #    role.resources :users, :controller=>"admin/user", :only=>[:index]
  #    role.resources :accesses, :controller=>"admin/access", :only=>[:index],:member=>{:add=>:any,:remove=>:any,:change=>:any}
  #  end
  map.namespace(:admin) do |admin|
    admin.resources :users, :controller => 'user', :except=>[:show],
                    :member => {
                            :edit_self=>[:get, :post]
                    },
                    :collection=>{
                            :list=>:any,
                            :current_roles=>:get,
                            :login=>:any,
                            :logout=>:get,
                            :forgot_password=>:any,
                            :change_password=>:any
                    } do |users|
      users.resources :roles, :controller => 'role',
                      :member => {
                              :add => :any,
                              :remove => :any
                      }
    end
    admin.resources :accesses, :controller => 'access',:except=>[:show],
                    :collection=>{
                            :list=>:any,
                            :current_roles=>:get
                    },
                    :member=>{
                            :add=>:any,
                            :change=>:any,
                            :remove=>:any
                    }
    admin.resources :roles, :controller => 'role', :except=>[:show],
                    :collection=>{
                            :list=>:any
                    } do |roles|
      roles.resources :accesses, :controller => 'access'
      roles.resources :users, :controller => 'user'
    end
    admin.resources :translations, :controller => 'translate',
                    :collection=>{
                            :init_translations => :any,
                            :change_language => :get
                    }
    admin.resources :menus, :controller => 'menu',
                    :collection => {
                            :list=>:any,
                            :init_menus => :any,
                            :init_translations => :any,
                            :content_map => :get,
                            :add_content => :any,
                            :remove_content => :any,
                            :get_updated_items => :any,
                            :toggle_published => :any,
                            :refresh => :any,
                            :save_full_tree => :any
                    }
    admin.resources :menu_items, :controller => 'menu_item', :except=>[:show],
                    :collection => {
                            :cancel => :any,
                            :controller_actions => :post
                    },
                    :member => {
                            :get_meta_url => :any
                    }
    admin.resources :tables, :controller => 'table',:except=>[:show],
                    :collection=>{
                      :list => :any,
                      :save => :any
                    }
    admin.connect 'locale/index', :controller => 'locale', :action => 'index'
  end

  # global Core actions
  map.connect '/admin/:controller/:id/change_language', :action => 'change_language'
  map.connect '/admin/:controller/:id/meta_change_language', :action => 'meta_change_language'
  map.connect '/admin/:controller/change_language_only', :action => 'change_language_only'  
  map.admin_login 'system/login', :controller=>'admin/user', :action=>'login'
  map.admin_logout 'system/logout', :controller=>'admin/user', :action=>'logout'
  map.simple_captcha '/simple_captcha/:action', :controller => 'simple_captcha'
end

if File.exists?("#{RAILS_ROOT}/config/i18n-routes.yml")
  ActionController::Routing::Translator.translate_from_file('config', 'i18n-routes.yml')
end