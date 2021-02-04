#Base de données d'exemples

NB_CITIES = 100
NB_DOGS = 1000
NB_DOGSITTERS = 500
NB_STROLLS = 5000

#Villes
NB_CITIES.times do 
  City.create(city_name: Faker::Address.city)
end

#Dogsitters
NB_DOGSITTERS.times do
  Dogsitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: Faker::Number.between(from: 1, to: NB_CITIES))
end

#Dogs
NB_DOGS.times do
  Dog.create(first_name: Faker::Superhero.name, city_id: Faker::Number.between(from: 1, to: NB_CITIES))
end

#Strolls
NB_STROLLS.times do
  Stroll.create(date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 60), dog_id: Faker::Number.between(from: 1, to: NB_DOGS), dogsitter_id: Faker::Number.between(from: 1, to: NB_DOGSITTERS))
end
