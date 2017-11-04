class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.string :year
      t.belongs_to :customer, foreign_key: true

      t.timestamps
    end
  end
end
