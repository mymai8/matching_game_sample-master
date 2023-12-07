require 'test_helper'

class CheckControllerTest < ActionDispatch::IntegrationTest
  test "should get character" do
    get check_character_url
    assert_response :success
  end

end
