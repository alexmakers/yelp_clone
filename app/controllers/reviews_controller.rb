class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find params[:restaurant_id]

    @restaurant.reviews.create(params[:review].permit(:content, :rating))
    redirect_to @restaurant
  end
end
