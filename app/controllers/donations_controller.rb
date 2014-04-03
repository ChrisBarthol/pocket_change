class DonationsController < ApplicationController

  def new
    @donation = Donation.new
    @user = current_user
    @charities = Charity.order("RANDOM()").first

    @donation.user_id = @user.id
    @donation.amount = "0.1"  #hardcoded swipe amount

    respond_to do |format|
      format.html
      format.json { render :json => @charities }
    end

  end

  #show probably not needed
  def show
  end

  def index
    @donations = User.where(user_id: current_user).paginate(page: params[:page])
  end

  def create
    @donation = Donation.new(donation_params)
    if @donation.save
      redirect_to new
    end
  end

  private

  def donation_params
    params.required(:donation).permit(:user_id, :charity_id, :amount, :id)
  end
end