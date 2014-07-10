class DashboardsController < ApplicationController
  def show
    @users = User.all
    @greeting = Greeting.new
  end
end
