class PartyItemList < ActiveRecord::Base
    # has_many :users, through: :party_plans

    def food_sample
        PartyItemList.find_by(item_type: "food").sample(3)
    end

    def music_sample
        PartyItemList.find_by(item_type: "music").sample(3)
    end
end
