require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Tester Dude", email: "tester@dude.com")
  end
  
  test "should be valid" do
    assert @user.valid?
  end
end
