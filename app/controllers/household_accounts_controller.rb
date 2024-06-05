class HouseholdAccountsController < ApplicationController
  before_action :set_budget, only: [:index, :show, :new, :create]
  before_action :set_rank

  def index
    @household_accounts = HouseholdAccount.order(created_at: :desc)
    @results = @household_accounts.each_with_object({}) do |account, hash|
      hash[account.id] = calculate_total_result(account, @budget)
    end
  end

  def new
    if @budget.nil?
      redirect_to budgets_path
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

  def set_budget
    @budget = Budget.first
  end

  def set_rank
    @rank = calculate_rank
  end

  def calculate_rank
    budget = Budget.first
    return 'D' if budget.nil?

    household_accounts = HouseholdAccount.all
    return 'D' if household_accounts.empty?

    achieved_count = household_accounts.select { |account| account.total <= budget.total_budget }.count
    total_count = household_accounts.count

    achievement_rate = (achieved_count.to_f / total_count) * 100

    case achievement_rate
    when 90..100
      'S'
    when 80...90
      'A'
    when 70...80
      'B'
    when 60...70
      'C'
    else
      'D'
    end
  end
end