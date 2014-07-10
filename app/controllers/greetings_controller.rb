class GreetingsController < ApplicationController
  def create
    current_user.sent_greetings.create(greetings_params)
    Pusher[params[:recipient_id].to_s].trigger('new_greeting', {
      message: message_params, email: current_user.email
    })
    redirect_to :dashboard
  end

  private
  def greetings_params
    params.require(:greeting).permit(:message,:recipient_id)
  end
  
  def message_params
    params.require(:greeting).permit(:message)
  end
end
