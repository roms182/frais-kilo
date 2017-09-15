class TravelExpensesController < ApplicationController
  before_action :travels, only: [:index, :edit, :update]
  before_action :check_for_cancel, only: [:create, :edit]

  def index
    @travel = TravelExpense.new()
  end

  def create
    @travel = TravelExpense.new(travel_params)
    check_for_new_place
    if @travel.save
      @travel.create_return_travel if params[:travel_expense][:return] == 'true'
      redirect_to root_path
    else
      @travels = TravelExpense.all
      render :index  #je ne comprends pas bien encore comment render fonctionne et ce que cela fait exactement.
    end
  end

  def edit
    @travel = TravelExpense.find(params[:id])
    render :index
  end

  def update
    @travel = TravelExpense.find(params[:id])
    @travel.update_attributes(travel_params)
    check_for_new_place
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
    params.require(:travel_expense).permit! #ne maîtrise pas clairement Strong Params. Ce bang, j'en suis pas très sûr, et pas très fier...
  end

  def travels
    @travels = TravelExpense.all
  end

  def check_for_cancel
    if params[:cancel] == 'true'
      redirect_to root_path
    end
  end

  def check_for_new_place
    @travel.start_place_name = add_new_place[:start] if add_new_place[:start].present?
    @travel.end_place_name = add_new_place[:end] if add_new_place[:end].present?
  end

  def add_new_place
    #TODO : vérifier que le nouveau nom renseigner ne ressemble pas déjà à un existant
    # ex : Leroy-Merlin & Leroy Merlin
      { start: params[:travel_expense][:new_start_place],
      end: params[:travel_expense][:new_end_place] }
  end

end
