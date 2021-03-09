require "test_helper"

class JacketsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jackets_index_url
    assert_response :success
  end
end
