class BudgetsController < ApplicationController
  before_action :set_budget, only: [:edit, :update, :destroy]

  def index
    @budgets = Budget.all
  end

  def new
    @budget = Budget.new
  end

  def create
    @budget = Budget.new(budget_params)

    if @budget.save
      redirect_to budgets_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @budget.update(budget_params)
      redirect_to budgets_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @budget.destroy
    redirect_to budgets_path
  end

  private

  def set_budget
    @budget = Budget.find(params[:id])
  end

  def budget_params
    params.require(:budget).permit(:housing_budget, :food_budget, :utilities_budget, :communication_budget, :daily_goods_budget,
                                   :clothing_beauty_budget, :entertainment_budget, :transportation_budget,
                                   :health_medical_budget, :education_budget, :insurance_budget, :special_expenses_budget,
                                   :total_budget)
  end
end
