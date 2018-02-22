class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :type
      t.string :color
      t.decimal :price

      t.timestamps
    end
  end
end
