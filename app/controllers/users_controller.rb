class UsersController < ApplicationController
	before_action :set_user, :add_email

	def show
		@user = User.find(params[:id])
	end

	def add_email
		if params[:user] && params[:user][:email]
			current_user.email = params[:user][:email]

	      # When using the Devise confirmable module I choose to skip email confirmation here
	      # to avoid an unnecessary step since the user signed up with their Twitter account.
	      # Just remove the following line if you want the user to confirm their email address. 
	      current_user.skip_reconfirmation!

	      if current_user.save
	      	redirect_to current_user, notice: 'Your email address was successfully updated.'
	      else
	      	@show_errors = true
	      end
	  end
	end

	private
	
	def set_user
		@user = User.find(params[:id])
	end

end