class BodyValidator < ActiveModel::EachValidator
  def validate_each(article, body, value)
    unless value.split(" ").size >= 10
      article.errors.add(body, message: get_body_is_too_short_error_message, type: :too_short)
    end
  end

  private

  def get_body_is_too_short_error_message
    I18n.t('activerecord.errors.models.article.attributes.body.too_short')
  end
end
