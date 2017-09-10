class TravelExpensesController < ApplicationController

  def index
    @travel = TravelExpense.new()
    @travels = TravelExpense.all

  end

  def create
    @travel = TravelExpense.new(travel_params)
    if @travel.save
      redirect_to root_path
    else
      @travels = TravelExpense.all
      render :index
    end
  end

  def destroy
    travel = TravelExpense.find(params[:id]).delete
    redirect_to root_path
  end

  private

  def travel_params
    params.require(:travel_expense).permit!
  end

end
