class User < ActiveRecord::Base
  has_many :tweets
  has_secure_password

  validates :username, presence: true, length: {minimum: 5}, uniqueness: true
  validates :password, length: {minimum: 8}
end
