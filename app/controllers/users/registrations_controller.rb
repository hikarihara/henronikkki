class Users::RegistrationsController < Devise::RegistrationsController

  before_action :configure_permitted_parameters

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:nickname, :avatar, :email, :password, :password_confirmation, :current_password)
    end
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :avatar])
  end

end