class PagesController < ApplicationController
  def home
    p request.variant
  end
end
