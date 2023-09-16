class CreateTovars < ActiveRecord::Migration[7.0]
  def change
    create_table :tovars do |t|
      t.string :name
      t.integer :org_id

      t.timestamps
    end
  end
end
