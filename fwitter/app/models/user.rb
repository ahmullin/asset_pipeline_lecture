class User < ActiveRecord::Base
  has_many :tweets

  validates :username, presence: true, length: {minimum: 5}, uniqueness: true
  validates :password, length: {minimum: 8}
end
