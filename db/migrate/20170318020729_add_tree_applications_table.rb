class AddTreeApplicationsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :tree_applications do |t|
      t.string :first_name
      t.string :last_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :country
      t.string :phone_number
      t.string :email
      t.boolean :rental_property
      t.date :inquiry_date
      t.decimal :fee_amount, precision: 8, scale: 2
      t.string :referral_source
      t.boolean :water_agreement

      t.timestamps
    end
  end
end
