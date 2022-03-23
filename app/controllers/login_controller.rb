class LoginController < ApplicationController
  def index
    @error = false
  end

  def processed
    # check the credentials
    # if params[:username] == "CIS658" && params[:password] == "WebArchitectures"
    if params[:username] == "123" && params[:password] == "123"
      cookies[:loggedIn] = 'true'
      # @validationError = false
      redirect_to home_path
    else
      cookies[:loggedIn] = 'false'
      @error = true
      render :template => "login/index", :locals => { :error => @error }
      # render :template => "login/index", :locals => { :error => true }

    end
  end

  def logout
    cookies[:loggedIn] = 'false'
    redirect_to login_path
  end
end
