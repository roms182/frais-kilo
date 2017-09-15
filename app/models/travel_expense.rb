class TravelExpense < ApplicationRecord
  validate :travel_date_cannot_be_in_the_futur
  validate :add_new_place
  validate :two_different_location

  validates :travel_date, presence: true
  validates :travel_purpose, presence: true
  validates :distance_km,  presence: true, numericality: {only_float: true}
  validates :start_place_name, presence: true
  validates :end_place_name, presence: true

  #c'est attr_accessor permettent d'ajouter des inputs libres dans le Form
  #je doute que ce soit la meilleurs méthode en revanche
  attr_accessor :return, :new_start_place, :new_end_place

  def travel_date_cannot_be_in_the_futur #trouvé sur Stack Overflow
    errors.add(:travel_date, :date_anteriority) if
      !travel_date.blank? and travel_date > Date.today
  end

  def add_new_place         #je n'arrive pas à inclure I18n ici
    if (["> Add New", "> Ajouter un lieu"].include?(start_place_name) && new_start_place == "")
      errors.add(:new_start_place, :blank)
    end
    if (["> Add New", "> Ajouter un lieu"].include?(end_place_name) && new_end_place == "")
      errors.add(:new_end_place, :blank)
    end
  end

  def two_different_location
    errors.add(:end_place_name, :same_locations) if end_place_name == start_place_name
  end

  def create_return_travel
    return_travel = self.dup
    return_travel.start_place_name = self.end_place_name
    return_travel.end_place_name = self.start_place_name
    return_travel.save
  end

end
