class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.integer :seller_id
      t.text :text
      t.integer :price
      t.integer :buyer_id

      t.timestamps
    end
  end
end
