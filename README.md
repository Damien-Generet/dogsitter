
# Database for Dogsitter app. 

This app is just an exercise to train with database.


## Usage/Examples

```
- 1 : Bundle install
- 2 : Check the Seed if all is ok for you, you can create more thing
- 3 : console -> rails :seed
- 4 : console -> rails console
- 5 : do some research
```


## Contain

This app contain databse od Dog, Dogsitter and stroll. Relation n - n with stroll for intermediate table.

Some seeds that you can test to generate some dogs and dogsitter.

#The seeds.rb :
```
all_dogs = []
all_dog_sitters = []
all_cities = []
all_stroll = []

5.times do #Create 5 city with Faker generator
  all_cities << City.create(city_name: Faker::Address.city)  
end

30.times do #Create 30 dogs with Faker generator with a random city
  random_city = all_cities.sample
  all_dogs << Dog.create(name: Faker::FunnyName.name, city: random_city)
end

10.times do #Create 10 dog sitters with Faker generator and a random city.
  random_city = all_cities.sample
  all_dog_sitters << DogSitter.create(first_name: Faker::Name.name, last_name: Faker::Name.last_name, city: random_city)
end

all_dogs.each do |dog| #For all dog, create a Stroll with a dog, a dog sitter and the city of the dog sitter.
  random_sitter = all_dog_sitters.sample

  all_stroll << Stroll.create(dog: dog, dog_sitter: random_sitter, city: random_sitter.city)
end

```
## 🚀 About Me
I'm a future fullstack dev. 
This is the beginning of a great coder!

