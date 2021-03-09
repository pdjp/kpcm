require "test_helper"

class SweatshirtsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sweatshirts_index_url
    assert_response :success
  end
end
