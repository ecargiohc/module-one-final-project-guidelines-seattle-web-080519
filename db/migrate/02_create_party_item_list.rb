class CreatePartyItemList < ActiveRecord::Migration[5.0]
    def change
        create_table :party_item_lists do |l|
            l.string :item_name 
            l.string :item_type
        end
    end
end
