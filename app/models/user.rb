class User < ApplicationRecord
  validates :login, presence: true
  validates :nickname, presence: true
  validates :password, length: { minimum: 8 }, presence: true
end
