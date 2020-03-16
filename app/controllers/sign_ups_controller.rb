class SignUpsController < ApplicationController

  def new 
    @child_minder = ChildMinder.new
  end

  def create
    @child_minder = ChildMinder.new(minder_params)
    if @child_minder.save!
      redirect_to main_path, notice: '出品が完了しました'
    else
      render new_child_minder_registration_path, notice: "入力に誤りがあります。"
    end
  end

  def minder_params
    params.permit(
      :icon,
      :introduction,
      :child_minder_nickname,
      :gender_id,
      :years_of_experience,
    )
  end
end
