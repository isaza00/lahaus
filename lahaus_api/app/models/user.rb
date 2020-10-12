class User < ApplicationRecord

  has_many :properties, dependent: :destroy

  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  VALID_PHONE_REGEX = ^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$
  validates :email, presence: true,
                    length: { maximum: 255 },
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true,
                       length: { minimum: 4 },
                       allow_nil: true
  validates :full_name, presence: true,
                        length: { minimum: 3 },
                        allow_nil: false
  validates :cellphone, presence: true,
                    length: { maximum: 15 },
                    format: { with: VALID_PHONE_REGEX}

end
