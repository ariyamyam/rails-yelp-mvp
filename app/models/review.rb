class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true, length: { minimum: 2 }
  validates :rating, inclusion: { in: (0..5) }, presence: true, numericality: { only_integer: true }
end
