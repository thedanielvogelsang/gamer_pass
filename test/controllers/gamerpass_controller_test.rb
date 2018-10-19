require 'test_helper'

class GamerpassControllerTest < ActionDispatch::IntegrationTest
  test "should get landing" do
    get gamerpass_landing_url
    assert_response :success
  end

  test "should get signup" do
    get gamerpass_signup_url
    assert_response :success
  end

end
