class Recipe < ApplicationRecord
  belongs_to :user
  has_many :comments

  def self.search(search)                                                                                               #Search method to declare which fields the method should search for matching queries.
    where("title ILIKE ? OR ingredients ILIKE ? OR directions ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")     #Used ILIKE(postgres/heroku friendly) instead of LIKE (sql)
  end
  
end

