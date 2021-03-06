class RestaurantsController < ApplicationController

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new params[:restaurant].permit(:name, :description, :image_url, :address)

    if @restaurant.save
      redirect_to restaurants_path
    else
      render 'new'
    end
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find params[:id]
  end

  def edit
    @restaurant = Restaurant.find params[:id]
  end

  def update
    @restaurant = Restaurant.find params[:id]
    @restaurant.update params[:restaurant].permit(:name, :description, :image_url, :address)

    redirect_to '/restaurants'
  end

  def destroy
    @restaurant = Restaurant.find params[:id]
    @restaurant.destroy

    redirect_to '/restaurants'
  end

end
