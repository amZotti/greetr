class GreetingsController < ApplicationController
  def create
    greeting = current_user.sent_greetings.create(greetings_params)
    html_greeting = render greeting
    Pusher[greetings_params[:recipient_id].to_s].trigger('new_greeting', {
      greeting: html_greeting
    })
  end

  private
  def greetings_params
    params.require(:greeting).permit(:message, :recipient_id)
  end
end
