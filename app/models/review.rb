class Review < ApplicationRecord
  RANGE = (0..5).to_a
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, inclusion:
  { in: RANGE, message: 'Enter a number between 0 and 5' }
  validates :rating, numericality: { only_integer: true }
end
