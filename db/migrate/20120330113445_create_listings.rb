class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.text :content
      t.text :desription
      t.string :address
      t.string :city
      t.string :state
      t.integer :user_id

      t.timestamps
    end
  end
end
