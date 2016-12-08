require 'test_helper'

class FiveletControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get fivelet_new_url
    assert_response :success
  end

  test "should get show" do
    get fivelet_show_url
    assert_response :success
  end

end
