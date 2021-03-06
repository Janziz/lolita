module Lolita
  module Configuration
    # Main block can hold these methods:
    # <tt>list</tt> - List definition, see Lolitia::Configuration::List
    # <tt>tab</tt> - Tab definition, see Lolita::Configuration::Tab
    # <tt>tabs</tt> - Tabs definition, see Lolita::Configuration::Tabs
    class Core
      attr_reader :dbi,:klass
      @@generators=[:tabs,:list]

      class << self

        def add_generator(method)
          @@generators<<method.to_sym 
        end
      end
      # When configuration is defined in class than you don't need to worry about
      # creating new object, because Lolita itself create it for that class.
      # New object is created like when you define it in class, but <i>parent_class</i>
      # must be given.
      # ====Example
      #     class Person < ActiveRecord::Base
      #        include Lolita::Configuration
      #        lolita
      #     end
      #     Person.lolita.klass #=> Person
      #     # Init Lolita by youself
      #
      #     class Person < ActiveRecord::Base
      #       include Lolita::Configuration
      #     end
      #     Person.lolita=Lolita::Configuration::Base.new(Person)
      #     Person.lolita.klass #=> Person
      def initialize(orm_class,&block)
        @in_callback_mode = false
        @klass=orm_class
        @dbi=Lolita::DBI::Base.create(orm_class)
        block_given? ? self.instance_eval(&block) : self.generate!
      end


      # Create list variable for ::Base class and create lazy object of Lolita::LazyLoader.
      # See Lolita::Configuration::List for more information.
      def list &block
        Lolita::LazyLoader.lazy_load(self,:@list,Lolita::Configuration::List,@dbi,&block)
      end

      def list=(new_list)
        @list = new_list if new_list.is_a?(Lolita::Configuration::List)
      end

      # Create collection of Lolita::Configuration::Tab, loading lazy.
      # See Lolita::Configuration::Tabs for details.
      def tabs &block
        Lolita::LazyLoader.lazy_load(self, :@tabs,Lolita::Configuration::Tabs,@dbi,&block)
      end

      # Shortcut for Lolita::Configuration::Tabs <<.
      # Tabs should not be defined in lolita block to create onew or more Lolita::Configuration::Tab
      # See Lolita::Configuration::Tab for details of defination.
      def tab *args, &block
        self.tabs << Lolita::Configuration::Factory::Tab.add(@dbi,*args,&block)
      end
      
      # Call all supported instance metods to set needed variables and initialize object with them.
      def generate!
        @@generators.each{|generator|
          self.send(generator)
        }
      end

      private

      def after_initialize
        @dbi.klass.run(:after_lolita_loaded, :once => self)
      end

    end
  end
end