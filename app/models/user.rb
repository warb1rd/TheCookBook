class User < ApplicationRecord
    has_many :recipes
    has_secure_password                             #its a validation that authenticates and encrypts password and matches passwords
    validates :username, presence: true             # validates whether the name and email inputs are filled in.
    validates :username, length: { minimum: 2 }

    validates :email, presence: true
    validates :email, uniqueness: true

    validates :password, length: { in: 6..20 }
    validates :password, presence: true

end
