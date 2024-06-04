class HouseholdAccountsController < ApplicationController
  def index
    @household_accounts = HouseholdAccount.order(created_at: :desc)
    @budget = Budget.first # 一定の予算を取得
    @results = @household_accounts.each_with_object({}) do |account, hash|
      hash[account.id] = calculate_total_result(account, @budget)
    end
  end

  def new
    if @budget.nil?
      redirect_to new_budget_path and return
    end
    @household_account = HouseholdAccount.new
  end

  def create
    @household_account = HouseholdAccount.new(household_account_params)
    if @household_account.save
      redirect_to '/'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @household_account = HouseholdAccount.find(params[:id])
    @budget = Budget.first # 一定の予算を取得
    @total_result = calculate_total_result(@household_account, @budget)
  end

  def edit
    @household_account = HouseholdAccount.find(params[:id])
  end

  def update
    @household_account = HouseholdAccount.find(params[:id])
    if @household_account.update(household_account_params)
      redirect_to household_account_path(@household_account)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @household_account = HouseholdAccount.find(params[:id])
    @household_account.destroy
    redirect_to '/'
  end

private
  def household_account_params
    params.require(:household_account).permit(
      :year, :month_id, :housing, :food, :utilities, :communication,
      :daily_goods,:clothing_beauty, :entertainment, :transportation,
      :health_medical, :education, :insurance, :special_expenses,
      :total, :description
    )
  end

  def calculate_total_result(household_account, budget)
    household_account.total <= budget.total_budget ? '達成' : '未達'
  end
end