class Reservation < ApplicationRecord
  belongs_to :car
  validates :name, presence: true
  validates :surname, presence: true
  validates :countOfDay, presence: true
  validates :firstDay, presence: true
end
