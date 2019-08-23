class CreatePartyPlan < ActiveRecord::Migration[5.0]
   def change
    create_table :party_plans do |p|
        p.integer :user_id
        p.integer :party_item_list_id
        p.string :username
        p.string :item_name #name of food or name of album
        p.string :item_type #food or music
        p.integer :party_type #choices 1-5
        end
    end
end