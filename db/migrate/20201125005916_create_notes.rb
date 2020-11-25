class CreateNotes < ActiveRecord::Migration[6.0]
  def change
        create_table :notes do |t|
      t.belongs_to :User
      t.string :Comments
      t.timestamps

    end
  end
end
