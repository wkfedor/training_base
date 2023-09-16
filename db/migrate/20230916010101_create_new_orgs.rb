class CreateNewOrgs < ActiveRecord::Migration[7.0]
  def change
    create_table :new_orgs do |t|
      t.string :name
      t.integer :localization
      t.string :address
      t.integer :country_id
      t.timestamps
    end
  end
end