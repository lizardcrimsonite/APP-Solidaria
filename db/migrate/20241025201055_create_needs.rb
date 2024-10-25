class CreateNeeds < ActiveRecord::Migration[7.0]
  def change
    create_table :needs do |t|
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.integer :status
      t.string :location

      t.timestamps
    end
  end
end
