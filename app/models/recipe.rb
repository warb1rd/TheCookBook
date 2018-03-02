class Recipe < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy 

  def self.search(search)                                                                                                #Search method to declare which fields should be searched for matching queries.
    where("title ILIKE ? OR ingredients ILIKE ? OR directions ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")     #Used ILIKE(postgres/heroku friendly) instead of LIKE (sql)
  end                                                                                                                    #Prefix each method with self. to explicitly know that is a class method not an instance method
  
end

