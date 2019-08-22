class CreatePartyPlan < ActiveRecord::Migration[5.0]
    def change
        create_table :party_plans do |p|
            p.string :username
            p.string :item_name
            p.string :item_type
            p.integer :party_type
        end
    end
end
