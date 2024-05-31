class HouseholdAccountsController < ApplicationController
  def index
    @household_accounts = HouseholdAccount.order(created_at: :desc)
  end

  def new
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
end