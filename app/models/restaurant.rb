class Restaurant < ActiveRecord::Base
  has_many :reviews

  def average_rating
    reviews.average(:rating) || 0
  end
end
