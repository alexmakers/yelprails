class Review < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user

  # validates :name, presence: true
  # validates :content, presence: true, length: { minimum: 30 }
  validates :rating, inclusion: { in: :valid_ratings.to_proc, message: 'is not a valid rating' }
  validates :restaurant_id, uniqueness: { scope: :user_id, message: 'review has already been written' }

  def valid_ratings
    if restaurant.promoted?
      return 1..5
    end
    1..4
  end

end