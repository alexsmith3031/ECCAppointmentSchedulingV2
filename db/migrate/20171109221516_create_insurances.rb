class CreateInsurances < ActiveRecord::Migration[5.1]
  def change
    create_table :insurances do |t|
      t.boolean :yesno
      t.string :companyName
      t.string :claimNumber
      t.belongs_to :customer, foreign_key: true

      t.timestamps
    end
  end
end
