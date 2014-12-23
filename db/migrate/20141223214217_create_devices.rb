class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :endpoint_arn
      t.integer :resident
      t.boolean :active_status
      t.belongs_to :resident, index:true
      t.timestamps null: false
    end
  end
end
