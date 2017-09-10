class TravelExpense < ApplicationRecord
  validates :travel_date, presence: { message: "Merci d'indiquer la date du déplacement" }
  validates :travel_purpose, presence: { message: "Merci d'indiquer la raison de votre déplacement" }
  validates :distance, presence: { message: "Merci d'indiquer la distance entre les deux points de déplacement" }
  validates :start_place_name, presence: { message: "Merci d'indiquer le point de départ de votre déplacement" }
  validates :end_place_name, presence: { message: "Merci d'indiquer le point d'arrivée de votre déplacement" }
end
