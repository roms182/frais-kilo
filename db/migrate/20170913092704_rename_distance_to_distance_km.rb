class RenameDistanceToDistanceKm < ActiveRecord::Migration[5.1]
  def change
    rename_column :travel_expenses, :distance, 'distance_km'
  end
end
