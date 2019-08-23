class PartyItemList < ActiveRecord::Base
    has_many :users, through: :party_plans

end
