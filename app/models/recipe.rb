class Recipe < ApplicationRecord
  belongs_to :user


  def self.search(search)
    where("title LIKE ? OR ingredients ILIKE ? OR directions ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")     #Search method to declare which fields the method should search for matching queries.
  end
  
end

