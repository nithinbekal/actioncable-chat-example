class MessageRelayJob < ApplicationJob
  def perform(message)
    # may want an id like messages:messageid
    ActionCable.server.broadcast 'messages',
                                 message: MessagesController.render(message)
  end
end
