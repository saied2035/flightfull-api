# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airline.create!(
  name: 'Singapore Airlines', 
  description: 'To us, travel is more than just being in motion. It’s being in with innovation.',
  img_src: 'https://logowik.com/content/uploads/images/singapore-airlines9257.jpg', 
  fee: 500, 
  option_to_purchase: 700,
  total_amount_payable: 10000,
  facebook: 'https://www.facebook.com/singaporeair',
  twitter: 'https://twitter.com/singaporeair',
  linkedin: 'https://www.linkedin.com/company/singapore-airlines'
)

Airline.create!(
  name: 'Qatar Airways', 
  description: 'A multiple award-winning airline, Qatar Airways was announced as the ‘Airline of the Year’ at the 2022 World Airline Awards',
  img_src: 'https://logowik.com/content/uploads/images/541_qatarairways.jpg', 
  fee: 300, 
  option_to_purchase: 500,
  total_amount_payable: 8000,
  facebook: 'https://www.facebook.com/qatarairways',
  twitter: 'https://twitter.com/qatarairways',
  linkedin: 'https://www.linkedin.com/company/qatar-airways'
)

Airline.create!(
  name: 'Emirates',
  description: 'Emirates connects the world to, and through, our global hub in Dubai.',
  img_src: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Emirates_logo.svg/967px-Emirates_logo.svg.png',
  fee: 200,
  option_to_purchase: 400,
  total_amount_payable: 6000,
  facebook: 'https://www.facebook.com/Emirates',
  twitter: 'https://twitter.com/emirates',
  linkedin: 'https://www.linkedin.com/company/emirates'
)

Airline.create!(
  name: 'Turkish Airlines',
  description: 'Customer satisfaction is our top priority and we put the utmost care into ensuring that your journey runs as smoothly as possible.',
  img_src: 'https://logos-world.net/wp-content/uploads/2020/03/Turkish-Airlines-Logo.png',
  fee: 100,
  option_to_purchase: 300,
  total_amount_payable: 5000,
  facebook: 'https://www.facebook.com/TurkishAirlinesME',
  twitter: 'https://twitter.com/TurkishAirlines',
  linkedin: 'https://www.linkedin.com/company/turkish-airlines'
)

Airline.create!(
  name: 'Air France',
  description: 'Air France turns the flight into a moment of real pleasure in all its daily operations. Air France operates 1,500 daily flights in France, Europe and worldwide.',
  img_src: 'https://logos-world.net/wp-content/uploads/2020/03/Air-France-Logo.png',
  fee: 80,
  option_to_purchase: 250,
  total_amount_payable: 4500,
  facebook: 'https://www.facebook.com/airfrance',
  twitter: 'https://twitter.com/AirFrance',
  linkedin: 'https://www.linkedin.com/company/air-france'
)

Airline.create!(
  name: 'Cathay Pacific Airways',
  description: 'From a single plane to a world-leading airline and premium lifestyle brand, we celebrate the highlights of our journey so far.',
  img_src: 'https://logos-world.net/wp-content/uploads/2023/01/Cathay-Pacific-Logo.png',
  fee: 75,
  option_to_purchase: 200,
  total_amount_payable: 3000,
  facebook: 'https://www.facebook.com/cathaypacific',
  twitter: 'https://twitter.com/cathaypacific',
  linkedin: 'https://www.linkedin.com/company/cathay-pacific'
)

Airline.create!(
  name: 'EVA Air',
  description: 'Big Ideas, Attention to Smallest Details',
  img_src: 'https://logos-download.com/wp-content/uploads/2016/05/EVA_Air_logo_logotype.png',
  fee: 70,
  option_to_purchase: 150,
  total_amount_payable: 2500,
  facebook: 'https://www.facebook.com/evaairwayscorpen',
  twitter: 'https://twitter.com/EVAAirUS',
  linkedin: 'https://www.linkedin.com/company/eva-airways'
)

Airline.create!(
  name: 'Korean Air',
  description: 'To be a Respected Leader in the World Airline Community',
  img_src: 'https://logos-download.com/wp-content/uploads/2016/03/Korean_Air_website_logotype.png',
  fee: 65,
  option_to_purchase: 100,
  total_amount_payable: 2000,
  facebook: 'https://www.facebook.com/KoreanAir.global',
  twitter: 'https://twitter.com/koreanair_ke',
  linkedin: 'https://www.linkedin.com/company/korean-air'
)