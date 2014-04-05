module SessionsHelper

	def current_user?(user)
		user == current_user
	end

	def user_auth
  		authenticate_user! || authenticate_charity!
  	end
end