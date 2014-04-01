class UsersController < ApplicationController

  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  private

  def user_params
    params.required(:user).permit(:password, :password_confirmation, :id)
  end
end