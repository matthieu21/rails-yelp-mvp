class ReviewsController < ApplicationController
  before_action :set_review

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params.require(:review).permit(:content, :rating))
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def set_review
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
