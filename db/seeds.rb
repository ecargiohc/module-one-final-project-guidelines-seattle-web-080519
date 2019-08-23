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
