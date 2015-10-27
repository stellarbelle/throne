class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user
      if user.authenticate(params[:password])
    	  session[:user_id] = user.id
    	  redirect_to "/"
      else
    	  flash[:login] = "Invalid E-mail/Password Combination" 
    	  redirect_to "/"
      end
    else
      flash[:login] = "Invalid E-mail/Password Combination"
      redirect_to '/'
    end
  end
  def destroy
  	session[:user_id] = nil
    redirect_to "/"
  end
end