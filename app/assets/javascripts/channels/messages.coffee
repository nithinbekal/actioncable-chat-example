App.messages = App.cable.subscriptions.create "MessagesChannel",
  received: (data) -> $('#messages').append(data.message)
