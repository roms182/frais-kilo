class TravelExpense < ApplicationRecord
  validate :travel_date_cannot_be_in_the_futur

  validates :travel_date, presence: { message: "Merci d'indiquer la date du déplacement" }
  validates :travel_purpose, presence: { message: "Merci d'indiquer la raison de votre déplacement" }
  validates :distance, presence: { message: "Merci d'indiquer la distance entre les deux points de déplacement" }
  validates :start_place_name, presence: { message: "Merci d'indiquer le point de départ de votre déplacement" }
  validates :end_place_name, presence: { message: "Merci d'indiquer le point d'arrivée de votre déplacement" }

  def travel_date_cannot_be_in_the_futur
    errors.add(:travel_date, "Merci d'indiquer une date antérieure ou égale à celle d'aujourd'hui") if
      !travel_date.blank? and travel_date > Date.today
  end

#total_km is equal to double of distance when return == true
  def total_km
    self.distance * (self.return ? 2 : 1)
  end

end
