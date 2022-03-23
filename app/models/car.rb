class Car < ApplicationRecord
  has_many :reservations

  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :horsePower, presence: true
  validates :engineCapacity, presence: true
  validates :dailyPrice, presence: true
end
