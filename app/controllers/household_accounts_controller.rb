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

private
  def household_account_params
    params.require(:household_account).permit(
      :housing, :food, :utilities, :communication, :daily_goods,
      :clothing_beauty, :entertainment, :transportation,
      :health_medical, :education, :insurance, :special_expenses,
      :total, :description
    )
  end
end