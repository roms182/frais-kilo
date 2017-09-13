class RemoveUserIdFromTravelExpenses < ActiveRecord::Migration[5.1]
  def change
    remove_column :travel_expenses, :user_id, :integer
  end
end
