class PartyItemList < ActiveRecord::Base
    has_many :users, through: :party_plans

    def self.food_sample
        binding.pry
        PartyItemList.find_by(item_type: "food").rand(3)
    end
binding.pry
    def self.music_sample
        PartyItemList.find_by(item_type: "music").rand(3)
    end

end
