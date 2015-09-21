require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  def test_setting_username
    post :create, session: { username: 'john' }
    assert_equal 'john', cookies.signed[:username]
    assert_redirected_to messages_path
  end
end
