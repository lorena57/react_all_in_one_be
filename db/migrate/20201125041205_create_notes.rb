class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.belongs_to :user
      t.string :comments
      t.timestamps

    end
  end
end
