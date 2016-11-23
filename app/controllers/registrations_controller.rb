class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :date_of_birth, :gender, :height_in_inches, :weight_in_pounds, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :date_of_birth, :gender, :height_in_inches, :weight_in_pounds, :email, :password, :password_confirmation, :current_password)
  end
end
