$:.unshift File.expand_path('../../../lib', __FILE__)

require 'action_controller/railtie'
require 'action_view/railtie'

require 'variauto'

module Dummy
  class Application < Rails::Application
    config.secret_token = 'abcdefghijklmnopqrstuvwxyz0123456789'
    config.session_store :cookie_store, key: '_dummy_session'
    config.eager_load = false
    config.active_support.deprecation = :log
  end
end

Dummy::Application.initialize!

Dummy::Application.routes.draw do
  root 'pages#show'
end

class ApplicationController < ActionController::Base
end

class PagesController < ApplicationController
  def show
  end
end
