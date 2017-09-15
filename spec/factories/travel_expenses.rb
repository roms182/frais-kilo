FactoryGirl.define do
  factory :travel_expense do
    travel_date '2017/08/20'
    travel_purpose 'Rencontrer le directeur'
    start_place_name '9troisquarts'
    end_place_name 'Kiloutou'
    distance_km 10

    trait :office do
      start_place_name '9troisquarts'
    end
  end
end
