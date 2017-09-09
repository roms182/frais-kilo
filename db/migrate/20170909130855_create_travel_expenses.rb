class CreateTravelExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :travel_expenses do |t|
      t.integer :user_id
      t.date :travel_date
      t.string :travel_purpose
      t.string :start_place_name
      t.string :end_place_name
      t.float :distance
      t.boolean :return
      t.float :total_km

      t.timestamps
    end
  end
end
