class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :suite_number
      t.integer :resident
      t.string :owner_email
      t.belongs_to :condo, index:true
      t.timestamps null: false
    end
  end
end
