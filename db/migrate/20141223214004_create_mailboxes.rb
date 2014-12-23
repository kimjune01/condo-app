class CreateMailboxes < ActiveRecord::Migration
  def change
    create_table :mailboxes do |t|
      t.integer :box_number
      t.belongs_to :resident, index:true
      t.timestamps null: false
    end
  end
end
