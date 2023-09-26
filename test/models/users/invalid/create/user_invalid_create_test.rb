require "test_helper"

class UserInvalidCreateTest < ActiveSupport::TestCase
  test "should test if an user with blank params is invalid" do
    user = User.new(login: nil, nickname: nil, password: nil)
    
    assert_not user.valid?
  end

  test "should test if an user with a short password is invalid" do
    user = User.new(login: 'foo', nickname: 'foo', password: 'foo')
    
    assert_not user.valid?
  end
end
