class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :content
      t.string :content_type
      t.belongs_to :concierge, index:true
      t.timestamps null: false
    end
  end
end
