class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :title
      t.text :intro
      t.integer :price
      t.text :address
      t.string :room_image
      t.integer :user_id

      t.timestamps
    end
  end
end
