module Variauto
  class Railtie < Rails::Railtie
    initializer 'variauto' do
      ActiveSupport.on_load :action_controller do
        ActionController::Base.send :include, Variauto::Base
      end
    end
  end
end
