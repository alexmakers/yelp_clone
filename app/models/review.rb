class Review < ActiveRecord::Base
  belongs_to :restaurant
  after_create :send_owner_email

  def send_owner_email
    mail = ReviewMailer.notify_owner restaurant.owner_email, self
    mail.deliver!
  end
end