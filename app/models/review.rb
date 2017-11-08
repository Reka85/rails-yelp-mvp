class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true,
  inclusion: {in: Array(0..5), message: "rating must be between 0 and 5"},
  numericality: { only_integer: true, message: "rating must be a whole number" } #otherwise allows floats, 2.5 is saved as 2
end
