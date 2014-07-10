class LandingsController < ApplicationController
  skip_before_action :require_login

  def show
    @user = User.new
  end
end
