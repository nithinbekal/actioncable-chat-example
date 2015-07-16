class MessagesController < ApplicationController
  def index
  end

  def create
    ActionCable.server.broadcast 'messages',
      message: MessagesController.render(
        partial: 'messages/message',
        locals: {
          message: params[:message][:body],
          username: cookies.signed[:username]
        }
      )
    head :ok
  end
end
