require "test_helper"

class AdresControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get adres_Index_url
    assert_response :success
  end
end
