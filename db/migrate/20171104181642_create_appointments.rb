class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.datetime :appDate
      t.string :description
      t.belongs_to :customer, foreign_key: true

      t.timestamps
    end
  end
end
