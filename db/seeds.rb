require 'faker'
include Faker 

def fake_food
    10.times do 
        PartyItemList.create({
            item_name: Faker::Food.dish,
            item_type: "food"
        })
    end
end

def fake_music
    10.times do
        PartyItemList.create({
            item_name: Faker::Music.album,
            item_type: "music"
        })
    end
end


fake_music
fake_food

puts "Seeds done ayyyyyyeee."
# pp1 = PartyPlan.create(username: "george", item_name: [
#     (Faker::Food.dish, item_type: "food"), (Faker::Music.album, item_type: "music")], party_type: 1)
# pp2 = PartyPlan.create()
# pp3 = PartyPlan.create()
# pp4 = PartyPlan.create()

# kf1 = "fruit wands"
# kf2 = "sprinkle & white chocolate dipped fruits"
# formal: 
# ff1 = "short rib sliders and bourbon"
# ff2 = "quail eggs in prosciutto nest, scallops"
# casual/intimate
# cif1 = "lobster rolls" 
# cif2 = "taco bar"
# casual/semi-formal
# csf1 = "lasagna cupcakes"
# csf2 = "oysters on a half shell"
# dance party 
# dpf = "mac and cheese bites"
# dpf = "pizza rolls"

# kids playlist
# kp1 = "'Let It Go' from Frozen"
# kp2 = "'Hakuna Matata' from The Lion King"

# formal playlist
# fp1 = "Violin Concerto No. 5 in A major, K. 219"
# fp2 = "'The Girl from Ipanema' by Stan Getz & Joao Gilberto"

# casual/intimate playlist
# cip1 = "'Fantasy' by Breakbot feat. Ruckazoid"
# cip2 = "'The Palisades' by Childish Gambino feat. Christian Rich"

# casual/semi-professional
# csp1 = "'You & Me' by Marc E. Bassy feat. G-Eazy"
# csp2 = "'Sober' by Childish Gambino"

# dance party 
# dp1 = "'One More Time' by Daft Punk"
# dp2 = "'Peanut Butter Jelly' by Galantis"
