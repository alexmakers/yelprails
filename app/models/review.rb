class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :name, presence: true
  validates :content, presence: true, length: { minimum: 30 }
  validates :rating, inclusion: { in: 1..5, message: 'must be selected' }
end
