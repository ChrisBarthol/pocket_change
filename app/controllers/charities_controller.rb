class CharitiesController < ApplicationController

  before_filter :user_auth
  before_filter :configure_devise_params, if: :devise_controller?
  
  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :email, :password, :password_confirmation, :address1, :address2,
        :phone, :fax, :past1, :past2, :past3, :future1, :future2, :future3, :EIN)
    end
  end

  def show
    @charity = Charity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def index
    @charities = Charity.paginate(page: params[:page])
  end

  private

  def charity_params
    params.required(:charity).permit(:password, :password_confirmation, :id)
  end
end