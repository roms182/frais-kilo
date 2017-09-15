require 'rails_helper'

RSpec.describe TravelExpense, type: :model do
  it "is valid with a travel_date, travel_purpose, start_place_name, end_place_name and distance_km" do
    travel = new_travel
    expect(travel).to be_valid
  end

  it "is invalid without a travel_date" do
    travel = new_travel
    niler(travel, :travel_date)
    expect(travel).not_to be_valid
  end

  it "is invalid without a travel_purpose" do
    travel = new_travel
    niler(travel, :travel_purpose)
    expect(travel).not_to be_valid
  end

  it "is invalid without a start_place_name" do
    travel = new_travel
    niler(travel, :start_place_name)
    expect(travel).not_to be_valid
  end

  it "is invalid without a end_place_name" do
    travel = new_travel
    niler(travel, :end_place_name)
    expect(travel).not_to be_valid
  end

  it "is invalid without a distance" do
    travel = new_travel
    niler(travel, :distance_km)
    expect(travel).not_to be_valid
  end

  it "is invalid with a date posterious to Today" do
    travel = new_travel
    travel.travel_date = (Date.today + 1.day)
    expect(travel).not_to be_valid
  end

end

#-----------------------------------------------------
def new_travel
  TravelExpense.new(
      travel_date: '2017/08/20',
      travel_purpose: 'Rencontrer le directeur',
      start_place_name: '9troisquart',
      end_place_name: 'Kiloutou',
      distance_km: 10
      )
end

def niler(object, attribute)
    object.send("#{attribute}=", nil)
end


