class Admin::Action < Cms::Base
  set_table_name :admin_actions
  has_one :menu_item, :as => :menuable, :class_name=>"Admin::MenuItem"

  # returns a list of actions for given conttroller, used in Menu::Item editor
  def self.actions_for_controller name
    allowed_actions = []
    ActionController::Routing::Routes.routes.each do |route|
      if (route.requirements[:controller] || "") == name
        allowed_actions << [route.requirements[:action].humanize, route.requirements[:action]]
      end
    end
    allowed_actions.sort
  end
end
