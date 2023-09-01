require "test_helper"

class ModelsControllerTest < ActionDispatch::IntegrationTest
  test "should get my_portfolio" do
    get models_my_portfolio_url
    assert_response :success
  end
end
