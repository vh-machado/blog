require "test_helper"

class UserValidCreateTest < ActiveSupport::TestCase
  test "should test if an user is valid" do
    user = User.new(login: 'foo', nickname: 'foo', password: 'foofoofoo')      
    
    assert user.valid?
  end
end
