class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(
        :sign_up, keys:
        [
          :child_minder_nickname,
          :gender_id,
          :icon,
          :years_of_experience_h,
          :years_of_experience_y,
          :introduction,
          :parent_nickname,
          :gender_id,
          :parent_icon,
          :phone,
          ])
    end
end
