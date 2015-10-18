require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test "message can be valid" do
    assert Message.new(body: "b", username: "user").valid?
  end

  test "message requires body" do
    assert !Message.new(username: "user").valid?
  end

  test "message requires user" do
    assert !Message.new(body: "b").valid?
  end
end
