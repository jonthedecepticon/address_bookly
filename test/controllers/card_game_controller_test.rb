require 'test_helper'

class CardGameControllerTest < ActionDispatch::IntegrationTest
  test "should get war" do
    get card_game_war_url
    assert_response :success
  end

end
