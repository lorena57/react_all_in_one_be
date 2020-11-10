class CreateGroceries < ActiveRecord::Migration[6.0]
  def change
    create_table :groceries do |t|
      t.belongs_to :user
      t.string :item
      t.integer :qty
      t.timestamps
    end
  end
end
