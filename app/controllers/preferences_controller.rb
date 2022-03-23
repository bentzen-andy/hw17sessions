class PreferencesController < ApplicationController
  def index
    if cookies[:displayMode] == "dark"
      @checked = "checked"
    end

    if cookies[:loggedIn] == 'false'
      redirect_to preferences_path + '/error'
    end
  end

  skip_before_action :verify_authenticity_token
  def displayPreference
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
