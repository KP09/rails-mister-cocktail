Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
url_hash = JSON.parse(open(url) { |io| io.read })

url_hash["drinks"].each do |element|
  Ingredient.create!(name: element["strIngredient1"])
end

COCKTAILS = ["Mojito", "Vodka Martini", "Espresso Martini", "Reggae Rum Punch"]

COCKTAILS.each do |cocktail|
  Cocktail.create!(name: cocktail, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut eaque odio nemo quibusdam culpa consectetur, porro officia repudiandae, eligendi voluptatibus quis ullam excepturi sint nobis sunt soluta omnis. Cupiditate, provident.")
end

5.times do
  cocktail = Cocktail.all.sample
  ingredient = Ingredient.all.sample
  Dose.create!(description: "Some description", cocktail: cocktail, ingredient: ingredient)
end
