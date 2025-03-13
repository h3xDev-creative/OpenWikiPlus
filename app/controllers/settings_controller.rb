class SettingsController < ApplicationController
  before_action :set_setting, only: %i[edit update]

  def edit
  end

  def update
    if @setting.update(setting_params)
      redirect_to edit_setting_path(@setting), notice: "Settings updated successfully."
    else
      render :edit
    end
  end

  private

  def set_setting
    @setting = current_user.settings.find(params[:id])
  end

  def setting_params
    params.require(:setting).permit(:theme)
  end
end
