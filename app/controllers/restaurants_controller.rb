class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def index
    @restaurants = Restaurant.all
  end

  def create
    Restaurant.create(params[:restaurant].permit(:name, :description, :owner_email))

    redirect_to restaurants_path
  end

  def show
    @restaurant = Restaurant.find params[:id]
    @review = Review.new
  end
end
