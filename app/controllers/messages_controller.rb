class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.order("id desc").limit(20).reverse
  end

  def create
    message = Message.create(message_params) do | m|
      m.username = current_username
    end
    MessageRelayJob.perform_later(message) if message.valid?
    head :ok
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
