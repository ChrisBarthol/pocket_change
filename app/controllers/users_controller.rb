class UsersController < ApplicationController

  before_filter :authenticate_user!



  private

  def user_params
    params.required(:user).permit(:password, :password_confirmation)
  end
end