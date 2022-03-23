class PreferencesController < ApplicationController
  def index
    @csrf_token = session[:_csrf_token]

    if cookies[:displayMode] == "dark"
      @checked = "checked"
    end

    if cookies[:loginID] != session[:session_id]
      redirect_to preferences_path + '/error'
    end
  end

  def displayPreference
    @csrf_token = session[:_csrf_token]
    if cookies[:displayMode].blank?
      cookies[:displayMode] = { value: "dark", expires: 3.day }
      @checked = "checked"
    elsif cookies[:displayMode] == "light"
      cookies[:displayMode] = { value: "dark", expires: 3.day }
      @checked = "checked"
    else
      cookies[:displayMode] = { value: "light", expires: 3.day }
      @checked = ""
    end

    render :template => "preferences/index"
  end
end
