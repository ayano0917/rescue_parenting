class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(
        :sign_up, keys:
        [
          :icon,
          :introduction,
          :child_minder_nickname,
          :gender_id,
          :years_of_experience_id,
          :parent_nickname,
          :phone,
          ])
    end
end
