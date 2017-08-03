class CreateTwelveWeekYears < ActiveRecord::Migration[5.1]
  def change
    create_table :twelve_week_years do |t|
      t.string :name
      t.date :starts_on
      t.date :ends_on

      t.timestamps
    end
  end
end
