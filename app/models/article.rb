class BodyValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value.split(" ").size >= 10
      record.errors.add attribute, (options[:message] || "should have at least 10 words")
    end
  end
end

class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }, body: true
end
