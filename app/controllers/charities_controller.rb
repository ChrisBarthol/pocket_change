class CharitiesController < ApplicationController

  before_filter :authenticate_user!
  before_filter :configure_devise_params, if: :devise_controller?
  
  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :email, :password, :password_confirmation, :admin)
    end
  end

  def show
    @charity = Charity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def index
    @users = User.paginate(page: params[:page])
  end

  private

  def charity_params
    params.required(:user).permit(:password, :password_confirmation, :id)
  end
end