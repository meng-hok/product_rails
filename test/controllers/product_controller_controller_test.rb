require 'test_helper'

class ProductControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get Property" do
    get product_controller_Property_url
    assert_response :success
  end

end
