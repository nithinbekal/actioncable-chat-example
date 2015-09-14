#= require cable
#= require_self
#= require_tree .

hostname = (s) ->
  l = window.location
  (if (l.protocol == "https:") then "wss://" else "ws://") +
  l.hostname +
  (if ((l.port != 80) && (l.port != 443)) then ":" + l.port else "") +
  (if(s[0] == "/") then "" else l.pathname) + s

@App = {}
App.cable = Cable.createConsumer hostname("/")
