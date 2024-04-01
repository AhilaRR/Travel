class CreateDestinations < ActiveRecord::Migration[7.1]
  def change
    create_table :destinations do |t|
      t.references :trip, null: false, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
