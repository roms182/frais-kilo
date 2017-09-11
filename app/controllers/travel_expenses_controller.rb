class TravelExpensesController < ApplicationController
  before_action :travels, only: [:index, :edit, :update]

  def index
    @travel = TravelExpense.new()
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

  def edit
    @travel = TravelExpense.find(params[:id])
    render :index
  end

  def update
    @travel = TravelExpense.find(params[:id])
    @travel.update_attributes(travel_params)
    if @travel.save
      @travel = TravelExpense.new()
      redirect_to root_path
    else
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

  def travels
    @travels = TravelExpense.all
  end

end
