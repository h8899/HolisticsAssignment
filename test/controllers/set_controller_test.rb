require 'test_helper'

class SetControllerTest < ActionDispatch::IntegrationTest
  test "should get _process" do
    get set__process_url
    assert_response :success
  end

end
