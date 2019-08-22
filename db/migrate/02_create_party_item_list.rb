class CreatePartyItemList < ActiveRecord::Migration[5.0]
    def change
        create_table :party_item_lists do |l|
            l.string :item_name #food name OR album(music) name
            l.string :item_type #food OR music
        end
    end
end