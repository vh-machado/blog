require "test_helper"

class ArticleInvalidCreateTest < ActiveSupport::TestCase
  test "should test if an article is invalid" do
    50.times do
      article = Article.new(title: nil, body: 'Test body')
      
      puts article.errors.full_messages

      assert !article.valid?
    end
  end
end
