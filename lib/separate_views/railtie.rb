module SeparateViews
  class Railtie < Rails::Railtie
    initializer 'separate_views' do
      ActiveSupport.on_load :action_controller do
        ActionController::Base.send :include, SeparateViews::Base
      end
    end
  end
end
