class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])

  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @review = Review.find(params[:review_id])
    @restaurant.review = @review
    redirect_to restaurant_path(@restaurant)
  end

  def edit
  end
end
