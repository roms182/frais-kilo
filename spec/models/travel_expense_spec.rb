require 'rails_helper'

RSpec.describe TravelExpense, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:travel_expense)).to be_valid
  end

  it "is valid with a travel_date, travel_purpose, start_place_name, end_place_name and distance_km" do
    travel = FactoryGirl.create(:travel_expense)
    expect(travel).to be_valid
  end

  it "is invalid without a travel_date" do
    travel = build(:travel_expense, travel_date: nil)
    expect(travel).not_to be_valid
  end

  it "is invalid without a travel_purpose" do
    travel = build(:travel_expense, travel_purpose: nil)
    expect(travel).not_to be_valid
  end

  it "is invalid without a start_place_name" do
    travel = build(:travel_expense, start_place_name: nil)
    expect(travel).not_to be_valid
  end

  it "is invalid without a end_place_name" do
    travel = build(:travel_expense, end_place_name: nil)
    expect(travel).not_to be_valid
  end

  it "is invalid without a distance_km" do
    travel = build(:travel_expense, distance_km: nil)
    expect(travel).not_to be_valid
  end

  it "is invalid with a date posterious to Today" do
    travel = create(:travel_expense)
    travel.travel_date = (Date.today + 1.day)
    expect(travel).not_to be_valid
  end

  it "is invalid with end_place_name equal to start_place_name" do
    travel = create(:travel_expense)
    travel.end_place_name = travel.start_place_name
    expect(travel).not_to be_valid
  end

  it "is valid with a start_place_name" do
    travel = create(:travel_expense, :office)
    expect(travel.start_place_name).to eql('9troisquarts')
  end
end




