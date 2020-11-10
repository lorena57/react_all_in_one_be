class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.belongs_to :user
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.string :email
      t.timestamps
    end
  end
end
