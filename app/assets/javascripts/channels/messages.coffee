App.messages = App.cable.subscriptions.create "MessagesChannel",
  connected: ->
    @installPageChangeCallback()

  followMessages: ->
    @perform 'follow', {}

  received: (data) ->
    console.log('received')

  installPageChangeCallback: ->
    unless @installedPageChangeCallback
      @installedPageChangeCallback = true

      $ ->
        App.messages.followMessages()
        console.log 'following'
