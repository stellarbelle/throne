class User < ActiveRecord::Base
  has_secure_password
  has_many :places
  has_many :reviews
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, :handle, presence: true, length: {in: 3..30}
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: {with: EMAIL_REGEX}
  validates :password, presence: true, length: {minimum: 8}
  before_save do
  	self.email.downcase!
  end
end
