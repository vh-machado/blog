class BodyValidator < ActiveModel::EachValidator
  def validate_each(article, body, value)
    unless value.split(" ").size >= 10
      article.errors.add(body, message: "should have at least 10 words", type: :too_short)
    end
  end
end
