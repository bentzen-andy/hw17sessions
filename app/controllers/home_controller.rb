class HomeController < ApplicationController
  def index
    if cookies[:loggedIn] != 'true'
      cookies[:loggedIn] = 'false'
    end
  end
end
