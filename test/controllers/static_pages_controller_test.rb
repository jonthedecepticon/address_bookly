require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get portfolio" do
    get static_pages_portfolio_url
    assert_response :success
  end

  test "should get coming_soon" do
    get static_pages_coming_soon_url
    assert_response :success
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
  end

end
