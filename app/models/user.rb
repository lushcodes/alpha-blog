class User < ApplicationRecord

  # before saving record to the database
  before_save { self.email = email.downcase }

  # associations
  has_many :articles

  # validations
  validates :username, presence: true,
              uniqueness: { case_sensitive: false },
              length: { minimum: 3, maximum: 25 }

  VALID_EMAIL_REGEX =/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true,
              uniqueness: { case_sensitive: false },
              length: { maximum: 105 },
              format: { with: VALID_EMAIL_REGEX }

  has_secure_password
end