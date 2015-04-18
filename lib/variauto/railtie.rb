module Variauto
  class Railtie < Rails::Railtie
    initializer 'variauto' do
      ActiveSupport.on_load :action_controller do
        ApplicationController.send :include, Variauto::Base
      end
    end
  end
end
