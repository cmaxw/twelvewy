class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string :name
      t.references :twelve_week_year, foreign_key: true

      t.timestamps
    end
  end
end
