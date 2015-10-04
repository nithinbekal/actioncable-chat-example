# Action Chat Example

This is an example of a chat program using Rails, Action Cable and React.js.

The master branch of this repo contains a simple version of this app that
doesn't use React.js.

The original code from my [blog post] can be found on the [basic branch].

## References

* [Using ReactJS with Rails Action Cable](http://blog.bigbinary.com/2015/07/19/using-reactjs-with-rails-actioncable.html)
* [ReactJS and Socket.IO Chat Application](http://danialk.github.io/blog/2013/06/16/reactjs-and-socket-dot-io-chat-application/)

# Setup

```bash
bundle
rake db:create db:migrate
```

# Running

Have redis and postgres or sqlite3 running.

```bash
./bin/rails s
```

This example has been configured so that
both web and cable processes run in a single process.
So we don't need to run `./bin/cable` separately.

Browse to http://localhost:3000/ in a regular browser window and http://localhost:3000/ in another private browser window to start chatting.

# Thanks

- Example for including active channel in separate thread from @SophieDeBenedetto in [deploying-action-cable-to-heroku]
- Function to determine proper url for websocket @kbrock

[deploying-action-cable-to-heroku]: http://www.thegreatcodeadventure.com/deploying-action-cable-to-heroku/
[blog post]: http://nithinbekal.com/posts/rails-action-cable/
[basic branch]: https://github.com/nithinbekal/actioncable-chat-example/tree/basic
