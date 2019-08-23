class PartyItemList < ActiveRecord::Base
    has_many :users, through: :party_plans

    def self.food_sample
        foods = PartyItemList.where(item_type: "food").all
        food_names = foods.map { |item| item.item_name }
        food_names.sample(3)
    end

    def self.music_sample
        music = PartyItemList.where(item_type: "music").all
        music_names = music.map { |item| item.item_name }
        music_names.sample(3)
    end

end
