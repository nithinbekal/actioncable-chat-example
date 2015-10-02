json.messages(messages) do |message|
  json.(message, :username, :body)
end
