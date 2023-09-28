class CreateTovars < ActiveRecord::Migration[7.0]
  def change
    create_table :tovars do |t|
      t.string :name
      t.integer :org_id
      t.integer :new_id_data
      t.timestamps
    end
  end
end
