class User < ApplicationRecord
    has_many :recipes, dependent: :destroy                               #Allows you to add .method on @user
    has_many :comments, dependent: :destroy                              # dependent makes sure if the user/recipe is destroyed, the comments go with it and no errors are shown since the ids are related.

    has_secure_password                                                  #its a validation that authenticates and encrypts password and matches passwords
    validates :username, presence: true                                  # validates whether the name and email inputs are filled in.
    validates :username, length: { minimum: 2 }

    validates :email, presence: true
    validates :email, uniqueness: true

    validates :password, length: { in: 6..20 }
    validates :password, presence: true
end
