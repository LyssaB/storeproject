class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
  	redirect_to main_app.root_url, :alert => exception.message
  end
end
