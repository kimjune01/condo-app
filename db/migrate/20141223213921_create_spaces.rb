class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :name
      t.integer :capacity
      t.belongs_to :condo, index:true
      t.timestamps null: false
    end
  end
end
