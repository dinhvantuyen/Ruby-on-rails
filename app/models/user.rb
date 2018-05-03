class User < ApplicationRecord

  validates :name, presence: true, length: {maximum: Settings.name_maximum}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: Settings.email_maximum},
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: {minimum: Settings.password_maximum}
  has_secure_password

  before_save :email_downcase

  private
  def email_downcase
    self.email = email.downcase
  end
end
