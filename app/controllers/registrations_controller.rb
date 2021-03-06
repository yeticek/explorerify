class RegistrationsController < Devise::RegistrationsController
  private
  def sign_up_params
    params.require(:user).permit(:first_name, :nickname, :past_countries, :want_countries,
     :about, :last_name, :email, :password, :password_confirmation, :avatar_url)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :nickname, :past_countries, :want_countries,
     :about, :last_name, :email, :password, :password_confirmation, :current_password, :avatar_url)
  end
end