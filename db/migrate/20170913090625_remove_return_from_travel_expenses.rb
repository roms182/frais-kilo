class RemoveReturnFromTravelExpenses < ActiveRecord::Migration[5.1]
  def change
    remove_column :travel_expenses, :return, :boolean
  end
end
