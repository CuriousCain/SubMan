class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to root_path
      flash[:success] = 'Successfully signed in!'
    else
      flash.now[:danger] = 'Invalid email/password'
      render 'new'
    end
  end

  def destroy
    sign_out
    flash[:success] = 'Signed out'
    redirect_to root_url
  end
end
