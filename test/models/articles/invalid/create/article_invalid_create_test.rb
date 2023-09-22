require "test_helper"

class ArticleInvalidCreateTest < ActiveSupport::TestCase
  test "should test if an article with blank params is invalid" do
    article = Article.new(title: nil, body: nil, status: nil)
    
    assert_not article.valid?
  end

  test "should test if an article with a short body is invalid" do
    article = Article.new(title: 'foo', body: 'foo', status: 'public')
    
    assert_not article.valid?
  end
end
