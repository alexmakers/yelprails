class AddAwesomeRestaurantIdToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :restaurant, index: true
  end
end
