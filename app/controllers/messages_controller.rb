class MessagesController < ApplicationController
  def index
  end

  def create
    ActionCable.server.broadcast "messages:new",
      message: MessagesController.render(partial: 'messages/message',
                                         locals: { message: params[:message][:body] })
    head :ok
  end
end
