class CreateHelps < ActiveRecord::Migration[7.0]
  def change
    create_table :helps do |t|
      t.references :user, null: false, foreign_key: true
      t.references :need, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
