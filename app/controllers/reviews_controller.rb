class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    # associating review with a corresponding restaurant
    @restaurant.review = @review
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # associating review with a corresponding restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant.review = @review
    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
