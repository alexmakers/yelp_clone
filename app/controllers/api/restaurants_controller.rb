class Api::RestaurantsController < ApplicationController
  respond_to :json

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find params[:id]
  end

end