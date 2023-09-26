class User < ApplicationRecord
  validates :login, uniqueness: true, presence: true
  validates :nickname, presence: true
  has_secure_password
end
