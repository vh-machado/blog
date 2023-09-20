require "test_helper"

class ArticleValidCreateTest < ActiveSupport::TestCase
  # If possible, avoid testing with transactions
  # test "should create a valid article" do
    # 50.times do |n|  
      # article = Article.new(title: 'Test title', body: 'Test body with more than 10 chars')
      # 
      # article.save
      # 
      # assert_equal Article.count, n+1
    # end
  # end

  test "should test if an article is valid" do
    50.times do
      article = Article.new(title: 'Test title', body: 'Test body with more than 10 chars')
      
      assert article.valid?
    end
  end
end
