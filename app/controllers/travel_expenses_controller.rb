class TravelExpensesController < ApplicationController

  def index
    @travel = TravelExpense.new()
    @travels = TravelExpense.all

  end

  def create
    @travel = TravelExpense.new(travel_params)
    @travel.total_km = @travel.distance * 2
    if @travel.save
      redirect_to root_path
    else
      @travels = TravelExpense.all
      render :index
    end
  end

  private

  def travel_params
    params.require(:travel_expense).permit!
  end

end
