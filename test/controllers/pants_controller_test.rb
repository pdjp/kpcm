require "test_helper"

class PantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pants_index_url
    assert_response :success
  end
end
