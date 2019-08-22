class PartyItemList < ActiveRecord::Base 
    has_many :users, through: :party_plans

    # def get_playlist_from_api(playlist)
    #     response_string = RestClient.get("https://api.spotify.com/v1/")
    #     response_hash = JSON.parse(response_string)
    #     # puts response_hash["results"][0]["films"]
    # end
      
    def food_sample
        PartyItemList.find_by(item_type: "food").sample(3)
    end

    def music_sample
        PartyItemList.find_by(item_type: "music").sample(3)
    end
end