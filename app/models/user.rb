class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name, presence: true
  validates :username, presence: true, uniqueness: {case_sensitive: false}, length: {minimum: 6, maximum: 20}
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX}
  validates :password, length: {minimum: 6}

  before_save {self.email = email.downcase}

  has_secure_password
end
