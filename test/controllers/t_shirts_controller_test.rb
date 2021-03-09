require "test_helper"

class TShirtsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get t_shirts_index_url
    assert_response :success
  end
end
