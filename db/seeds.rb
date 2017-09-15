# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
TravelExpense.destroy_all

TravelExpense.create(
  travel_date: Date.new(2017,8,24),
  travel_purpose: "Rencontre avec le Directeur Marketing",
  start_place_name:"9troisquarts",
  end_place_name:"Kiloutou",
  distance_km:8.0
  )

TravelExpense.create(
  travel_date: Date.new(2017,6,12),
  travel_purpose: "Signature du contrat",
  start_place_name:"9troisquarts",
  end_place_name:"Decathlon",
  distance_km:7.0
  )

TravelExpense.create(
  travel_date: Date.new(2017,4,12),
  travel_purpose: "Rencontre avec le nouveau DG",
  start_place_name:"9troisquarts",
  end_place_name:"Leroy-Merlin",
  distance_km:10.0
  )

TravelExpense.create(
  travel_date: Date.new(2017,3,27),
  travel_purpose: "Révision du contrat",
  start_place_name:"9troisquarts",
  end_place_name:"Decathlon",
  distance_km:7.0
  )

TravelExpense.create(
  travel_date: Date.new(2017,5,05),
  travel_purpose: "Présentation de l'équipe Dév Ops",
  start_place_name:"9troisquarts",
  end_place_name:"Leroy-Merlin",
  distance_km:10.0
  )

TravelExpense.create(
  travel_date: Date.new(2017,6,20),
  travel_purpose: "Visite des nouveaux locaux",
  start_place_name:"9troisquarts",
  end_place_name:"Leroy-Merlin",
  distance_km:10.0
  )

TravelExpense.create(
  travel_date: Date.new(2017,7,30),
  travel_purpose: "Présentation du prototype",
  start_place_name:"9troisquarts",
  end_place_name:"Leroy-Merlin",
  distance_km:10.0
  )

TravelExpense.create(
  travel_date: Date.new(2017,8,30),
  travel_purpose: "Visite Prospect",
  start_place_name:"9troisquarts",
  end_place_name:"Mel de Lille",
  distance_km:8.0
  )
