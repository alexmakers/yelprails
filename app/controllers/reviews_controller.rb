class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find params[:restaurant_id]
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find params[:restaurant_id]
    @review = Review.new(params[:review].permit(:name, :content, :rating))

    if @review.valid?
      @restaurant.reviews << @review
      redirect_to restaurant_path(@restaurant)
    else
      render 'new'
    end

  end

end
