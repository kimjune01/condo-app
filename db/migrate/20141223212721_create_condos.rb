class CreateCondos < ActiveRecord::Migration
  def change
    create_table :condos do |t|
      t.string :address
      t.integer :floor
      t.integer :room
      t.integer :contact
      t.string :manager

      t.timestamps null: false
    end
  end
end
