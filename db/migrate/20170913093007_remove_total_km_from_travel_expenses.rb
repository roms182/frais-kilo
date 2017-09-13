class RemoveTotalKmFromTravelExpenses < ActiveRecord::Migration[5.1]
  def change
    remove_column :travel_expenses, :total_km, :float
  end
end
