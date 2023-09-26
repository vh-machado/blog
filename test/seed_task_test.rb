require "test_helper"

class SeedTaskTest < ActiveSupport::TestCase
  load "db/seeds.rb"

  test "should create 1 article" do
    articles = Article.all
    assert_equal articles.size, 1
  end

  test "should create 2 users" do
    users = User.all
    assert_equal users.size, 2
  end
end