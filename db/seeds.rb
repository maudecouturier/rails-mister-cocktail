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

puts 'Destroying cocktails'
Cocktail.destroy_all
puts 'Seeding cocktails'
# Cocktail.create(name: 'Mojito', photo: cl_image_path)
# Cocktail.create(name: 'Caipi', remote_photo_url: 'https://images.unsplash.com/photo-1551538827-9c037cb4f32a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
# Cocktail.create(name: 'Aperol Spritz', remote_photo_url:'https://images.unsplash.com/photo-1560512823-829485b8bf24?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
# Cocktail.create(name: 'Pisco Sour', remote_photo_url: 'https://images.unsplash.com/photo-1541546006121-5c3bc5e8c7b9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
# Cocktail.create(name: 'Daiquiri', remote_photo_url: 'https://images.unsplash.com/photo-1581574918867-888d02839120?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
# Cocktail.create(name: 'Bloody Mary', premote_photo_url: 'https://images.unsplash.com/photo-1576874240748-795e3bfa4c5a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
# Cocktail.create(name: 'Cosmopolitan', remote_photo_url: 'https://images.unsplash.com/photo-1566075321480-193b88d6c33b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
# Cocktail.create(name: 'Margarita', premote_photo_url: 'https://images.unsplash.com/photo-1573957065303-110b23048d68?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
# Cocktail.create(name: 'Moscow Mule', remote_photo_url: 'https://images.unsplash.com/photo-1568834663736-50bd2e74ed25?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
# Cocktail.create(name: 'Martini', remote_photo_url: 'https://images.unsplash.com/photo-1575023782549-62ca0d244b39?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
# Cocktail.create(name: 'Passion fruit cocktail', remote_photo_url: 'https://images.unsplash.com/photo-1548158518-c2f131b1aa01?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
puts "finished preparing cocktails"


