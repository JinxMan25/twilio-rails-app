require 'test_helper'

class SendTextControllerTest < ActionController::TestCase
  test "should get send_text_message" do
    get :send_text_message
    assert_response :success
  end

end
