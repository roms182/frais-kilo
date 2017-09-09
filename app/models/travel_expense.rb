class TravelExpense < ApplicationRecord
  validates :travel_date, presence: true
  validates :travel_purpose, presence: true
  validates :distance, presence: true
end
