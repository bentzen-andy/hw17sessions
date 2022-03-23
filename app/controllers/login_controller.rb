class LoginController < ApplicationController
  def index
    @error = false
  end

  def processed
    # check the credentials
    # if params[:username] == "123" && params[:password] == "123"
    if params[:username] == "CIS658" && params[:password] == "WebArchitectures"
      cookies[:loggedIn] = 'true'
      redirect_to home_path
    else
      cookies[:loggedIn] = 'false'
      flash[:alert] = "Incorrect username or password."
      redirect_to login_path
    end
  end

  def logout
    cookies[:loggedIn] = 'false'
    redirect_to login_path
  end
end
