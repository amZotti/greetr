class GreetingsController < ApplicationController
  def create
    current_user.sent_greetings.create(greetings_params)
    redirect_to :dashboard
  end

  private
  def greetings_params
    params.require(:greeting).permit(:message,:recipient_id)
  end
end