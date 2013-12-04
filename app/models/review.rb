class Review < ActiveRecord::Base
  belongs_to :restaurant
  after_create :send_owner_email

  def send_owner_email
    ReviewMailer.notify_owner(restaurant.owner_email, self).deliver
  end
end