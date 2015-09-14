class MessagesController < ApplicationController
  def index
    @message = Message.new
  end

  def create
    message = Message.new(person_params)
    message.username = cookies.signed[:username]
    ActionCable.server.broadcast 'messages',
      message: MessagesController.render(message)
    head :ok
  end

  private

  def person_params
    params.require(:message).permit(:body)
  end
end
