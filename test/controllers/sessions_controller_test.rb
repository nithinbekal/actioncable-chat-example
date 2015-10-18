require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  def test_setting_username
    post :create, params: { session: { username: 'john' } }
    assert_equal 'john', request.cookie_jar.signed[:username]
    assert_redirected_to messages_path
  end
end
