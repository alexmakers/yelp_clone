class Restaurant < ActiveRecord::Base
  has_many :reviews
  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  def average_rating
    reviews.average(:rating) || 0
  end
end
