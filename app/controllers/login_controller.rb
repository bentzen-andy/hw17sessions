class LoginController < ApplicationController
  def index
    @error = false
  end

  def processed
    # check the credentials
    # if params[:username] == "123" && params[:password] == "123"
    if params[:username] == "CIS658" && params[:password] == "WebArchitectures"
      cookies[:loginID] = { value: session[:session_id], expires: 3.day }
      redirect_to home_path
    else
      flash[:alert] = "Incorrect username or password."
      redirect_to login_path
    end
  end

  def logout
    cookies[:loginID] = ""
    reset_session
    redirect_to login_path
  end
end
