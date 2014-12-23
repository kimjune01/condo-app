class CreateResidents < ActiveRecord::Migration
  def change
    create_table :residents do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.belongs_to :room, index:true
      t.timestamps null: false
    end
  end
end
