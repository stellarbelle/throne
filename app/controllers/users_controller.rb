class UsersController < ApplicationController
	def new
	end
	def create
	puts"User Create!"
		new_user=User.create(user_params)
		if new_user.valid?
			session[:user_id]=new_user.id
			redirect_to "/"
		else
			flash[:registers]=new_user.errors.full_messages
			redirect_to '/'
		end
	end
	# def show
	# 	@user=User.find(params[:id])
	# 	@reviews=Review.all.where(user_id: params[:id]).count
	# 	@places=Place.all.where(user_id: params[:id]).count
	# end
private
	def user_params
		params.require(:user).permit(:name, :handle, :email, :password, :password_confirmation)
	end
end