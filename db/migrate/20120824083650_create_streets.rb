class CreateStreets < ActiveRecord::Migration
  def change
    create_table :streets do |t|
      t.string :name
      t.references :district

      t.timestamps
    end
    add_index :streets, :district_id
  end
end
