class DonationsController < ApplicationController

  def new
    @donation = Donation.new
  end

  #show probably not needed
  def show
  end

  def index
    @donations = User.where(user_id: current_user).paginate(page: params[:page])
  end

  def create
  end

  private

  def donation_params
    params.required(:donation).permit(:user_id, :charity_id, :amount, :id)
  end
end