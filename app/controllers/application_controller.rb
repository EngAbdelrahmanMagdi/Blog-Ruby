class ApplicationController < ActionController::Base
def unauthenticated_user
    return redirect_to login_path unless session[:user]
end 
def authenticated_user
    return redirect_to root_path if session[:user]
end 
end 