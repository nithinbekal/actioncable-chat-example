# Action Chat Example

This is an example of a chat program using Rails Action Cable.

The original code from my [blog post] can be found on the [basic branch].

# setup

```bash
bundle
rake db:create db:migrate
```

# running

Run the Action cable server:

```bash
chmod +x bin/cable
./bin/cable
```

have redis and postgres or sqlite3 running

```bash
./bin/rails s
```

Browse to http://localhost:3000/ in a regular browser window and http://localhost:3000/ in another private browser window to start chatting.

# Thanks

- Example for including active channel in separate thread from @SophieDeBenedetto in [deploying-action-cable-to-heroku]
- Function to determine proper url for websocket @kbrock

[deploying-action-cable-to-heroku]: http://www.thegreatcodeadventure.com/deploying-action-cable-to-heroku/
[blog post]: http://nithinbekal.com/posts/rails-action-cable/
[basic branch]: https://github.com/nithinbekal/actioncable-chat-example/tree/basic
