class AuthController < ApplicationController
  before_action :authenticated_user, except: [:logout]
  
  def login 
  end

  def register
   
  end

  def logout
    session[:user] = nil 
    redirect_to login_path 
  end

  def registerform
    user = User.new(params.permit(:name, :email, :password, :birthdate, :gender))
    return redirect_to root_path if user.save 
    redirect_back fallback_location: register_path
  end
  
  def loginform
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user] = user 
      return redirect_to root_path 
    end
    redirect_back fallback_location: login_path
  end 
end
