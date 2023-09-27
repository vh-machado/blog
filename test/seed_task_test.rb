require "test_helper"

class SeedTaskTest < ActiveSupport::TestCase
  setup do
    load "db/seeds.rb"
  end

  test "should create 1 article" do
    assert_equal Article.count, 1
  end

  test "should create 2 users" do
    assert_equal User.count, 2
  end
end