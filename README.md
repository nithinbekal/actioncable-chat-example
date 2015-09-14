# Action Chat Example

This is an example of a chat program using Rails Action Cable.

The original code from my [blog post] can be found on the [basic branch].

# setup

```bash
bundle
rake db:create db:migrate
```

# running

have redis and postgres running
in one tab: `./bin/cable`
in another tab: `./bin/rails s`

[blog post]: http://nithinbekal.com/posts/rails-action-cable/
[basic branch]: https://github.com/nithinbekal/actioncable-chat-example/tree/basic
