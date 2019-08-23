class User < ActiveRecord::Base
    has_many :party_plans
    has_many :party_item_lists, through: :party_plans
end
