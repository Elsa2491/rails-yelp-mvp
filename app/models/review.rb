class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, inclusion: { in: (1..5) }, numericality: { only_integer: true }
  validates :content, presence: true
end
