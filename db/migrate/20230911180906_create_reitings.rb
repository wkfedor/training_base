class CreateReitings < ActiveRecord::Migration[7.0]
  def change
    create_table :reitings do |t|
      t.integer :reiting
      t.integer :tovar_id

      t.timestamps
    end
  end
end
