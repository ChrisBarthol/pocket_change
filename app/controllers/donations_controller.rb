class DonationsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @donation = Donation.new
    @user = current_user
    @charities = Charity.order("RANDOM()").first
    @donationcount = Donation.where(charity_id: @charities.id).count
    respond_to do |format|
      format.html
      #format.json { render :json => @charities }
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
    @donation.user_id = current_user.id
    @donation.amount = "0.1"
    if @donation.save
      respond_to do |format|
        #format.html {redirect_to new_donation_path, :flash => {notice: "Thank you for donating!" }}
        format.js
      end
    else
      redirect_to root_url,:flash => {alert: "Error" }
    end
  end

  private

  def donation_params
    params.required(:donation).permit(:user_id, :charity_id, :amount, :id)
  end
end