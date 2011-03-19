module Lolita
  module Controllers
  	# Helper that add #render_component method. That is shortstand for render :partial for lolita
  	# partial files. Also it provide view hooks for Lolita.
	  # For any component there may be helper module. Modules are include in current view or 
    # controller instance when component is rendered.
    # All components ar placed in "app/helpers/components/[your component path]".
    # Component should have fallowing module structure Components::[NameSpace]::[Component name]Component
    #     Components::Lolita::ListComponent
    # ====Example
    #     render_component :"lolita/list", :dispaly
    #     # try to find /helpers/components/lolita/list_component.rb in every directory in $: that
    #     # ends with /helpers
    #     # require this file if found and extend self with Components::Lolita::ListComponent.
    # Component helpers is loaded in same order as views or controller.
    module ComponentHelpers
      # Render partial template.
      # Accept:
      # <tt>name</tt> - name for component in '/components' directory,
      #  can be full name too.
      #  Example 'lolita/list'
      # <tt>state</tt> - name for partial. Example 'row'.
      # <tt>options</tt> - any options to pass as <code>:locals</code> to partial,
      #  also available through <code>@opts</code> variable.
      # =====Example
      #      render_component "lolita/list", :display
      #      render_component "lolita/list/display"
      def render_component *args
        @opts=args.extract_options!
        name=args[0]
        state=args[1]
        raise "Can't render component without name!" unless name
        will_use_component name 
        return render(:partial=>"/components/#{name}#{state ? "/#{state}" : nil}",:locals=>@opts)
      end
      
      # Require component helper file and extend current instance with component helper module.
      # ====Example
      #     will_use_component :"lolita/list"
      def will_use_component component_name
        @used_component_helpers||=[]
        unless @used_component_helpers.include?(component_name)
          if path=component_helper_path(component_name)
            self.class.class_eval do
              require path
            end
            class_name=component_name.to_s.camelize
            self.extend("Components::#{class_name}Component".constantize)
          end
          @used_component_helpers<<component_name
        end
      end
      
      # Find path for given component.
      # 
      #    component_helper_path :"lolita/list" #=> [path_to_lolita]/app/helpers/components/lolita/list_component.rb
      def component_helper_path component_name
         helper_paths=$:.reject{|p| !p.match(/\/helpers$/)}
         get_path=lambda{|paths|
          extra_path=component_name.to_s.split("/")
          component=extra_path.pop
          paths.each do |path|
            new_path=File.join(path,"components",*extra_path,"#{component}_component.rb")
               if File.exist?(new_path) 
                 return new_path
               end
            end  
          nil
        }
        path=get_path.call(helper_paths)
        path
      end
      
    end
  end
end