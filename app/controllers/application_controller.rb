class ApplicationController < ActionController::Base

before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :mobile_no,:avatar, address_attributes: [:address]])
 devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :mobile_no, :avatar, address_attributes: [:address]])
   devise_parameter_sanitizer.permit(:sign_in, keys: [:address,:avatar])

  end

end




