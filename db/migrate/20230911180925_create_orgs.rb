20230911180925_create_orgs.rbclass CreateOrgs < ActiveRecord::Migration[7.0]
  def change
    create_table :orgs do |t|
      t.string :name
      t.integer :localization

      t.timestamps
    end
  end
end
