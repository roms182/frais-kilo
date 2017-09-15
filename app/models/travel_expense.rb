class TravelExpense < ApplicationRecord
  validate :travel_date_cannot_be_in_the_futur
  validate :add_new_place

  validates :travel_date, presence: true
  validates :travel_purpose, presence: true
  validates :distance_km,  presence: true, numericality: {only_float: true}
  validates :start_place_name, presence: true
  validates :end_place_name, presence: true

  #c'est attr_accessor permettent d'ajouter des inputs libres dans le Form
  #je doute que ce soit la meilleurs méthode en revanche
  attr_accessor :return, :new_start_place, :new_end_place

  def travel_date_cannot_be_in_the_futur #trouvé sur Stack Overflow
    errors.add(:travel_date, "Doit être antérieur à la date d'aujourd'hui") if
      !travel_date.blank? and travel_date > Date.today
  end

  def add_new_place         #je n'arrive pas à inclure I18n ici
    if (["> Add New", "> Ajouter un lieu"].include?(start_place_name) && new_start_place == "")
      errors.add(:new_start_place, "can't be blank")
    end
    if (["> Add New", "> Ajouter un lieu"].include?(end_place_name) && new_end_place == "")
      errors.add(:new_end_place, "can't be blank")
    end
  end

  def create_return_travel
    return_travel = self.dup
    return_travel.start_place_name = self.end_place_name
    return_travel.end_place_name = self.start_place_name
    return_travel.save
  end

end
