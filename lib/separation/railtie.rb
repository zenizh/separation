module Separation
  class Railtie < Rails::Railtie
    initializer 'separation' do
      ActiveSupport.on_load :action_controller do
        ActionController::Base.send :include, Separation::Base
      end
    end
  end
end
