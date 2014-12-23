class CreateConcierges < ActiveRecord::Migration
  def change
    create_table :concierges do |t|
      t.integer :phone
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
