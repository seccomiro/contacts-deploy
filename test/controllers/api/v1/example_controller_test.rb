require "test_helper"

class Api::V1::ExampleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_example_index_url
    assert_response :success
  end
end
