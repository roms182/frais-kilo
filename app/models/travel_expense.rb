class TravelExpense < ApplicationRecord
  validate :travel_date_cannot_be_in_the_futur

  validates :travel_date, presence: true
  validates :travel_purpose, presence: true
  validates :distance_km,  presence: true, numericality: {only_float: true}
  validates :start_place_name, presence: true
  validates :end_place_name, presence: true

  attr_accessor :return

  def travel_date_cannot_be_in_the_futur #trouvé sur Stack Overflow
    errors.add(:travel_date, "Doit être antérieur à la date d'aujourd'hui") if
      !travel_date.blank? and travel_date > Date.today
  end

  def creates_return_travel

  end

end
