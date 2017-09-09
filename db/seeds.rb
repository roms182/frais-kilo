# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
TravelExpense.destroy_all

TravelExpense.create(
  user_id: 1,
  travel_date: Date.new(2017,8,24),
  travel_purpose: "Rencontre avec le Directeur Marketing",
  start_place_name:"9troisquart - Villeneuve d'Asq",
  end_place_name:"Kiloutou - Lille",
  distance:14.5,
  return:true,
  total_km:14.5
  )

TravelExpense.create(
  user_id: 1,
  travel_date: Date.new(2017,6,12),
  travel_purpose: "Signature du contrat",
  start_place_name:"9troisquart - Villeneuve d'Asq",
  end_place_name:"Kiloutou - Lille",
  distance:14.5,
  return:true,
  total_km:14.5
  )
