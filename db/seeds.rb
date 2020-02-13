require 'json'
require 'open-uri'


puts 'Destroying ingredients...'
Ingredient.destroy_all

puts 'Seeding ...'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
user = JSON.parse(user_serialized)
ingredient_array = user['drinks']

ingredient_array.each do |i|
  ingredient = Ingredient.new(name: i['strIngredient1'])
  ingredient.save!
end

puts 'Finished!'

puts 'Seeding cocktails'
Cocktail.create(name: 'Mojito')
Cocktail.create(name: 'Caipi')
Cocktail.create(name: 'Aperol Spritz')
Cocktail.create(name: 'Pisco Sour')
Cocktail.create(name: 'Daiquiri')
Cocktail.create(name: 'Bloody Mary')
Cocktail.create(name: 'Cosmopolitan')
Cocktail.create(name: 'Margarita')
Cocktail.create(name: 'Moscow Mule')
Cocktail.create(name: 'Martini')
Cocktail.create(name: 'Sangria')
puts "finished preparing cocktails"


