class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :name
      t.references :city

      t.timestamps
    end
    add_index :districts, :city_id
  end
end
