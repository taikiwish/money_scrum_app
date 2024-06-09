require 'rails_helper'

RSpec.describe Budget, type: :model do
  before do
    @budget = FactoryBot.build(:budget)
  end

  describe '予算の登録' do
    context '予算登録できるとき' do
      it '全項目が存在すれば登録できる' do
        expect(@budget).to be_valid
      end
    end

    context '予算登録できないとき' do
      it 'housing_budgetが空では登録できない' do
        @budget.housing_budget = nil
        @budget.valid?
        expect(@budget.errors.full_messages).to include "Housing budget can't be blank"
      end

      it 'food_budgetが空では登録できない' do
        @budget.food_budget = nil
        @budget.valid?
        expect(@budget.errors.full_messages).to include "Food budget can't be blank"
      end

      it 'utilities_budgetが空では登録できない' do
        @budget.utilities_budget = nil
        @budget.valid?
        expect(@budget.errors.full_messages).to include "Utilities budget can't be blank"
      end

      it 'communication_budgetが空では登録できない' do
        @budget.communication_budget = nil
        @budget.valid?
        expect(@budget.errors.full_messages).to include "Communication budget can't be blank"
      end

      it 'daily_goods_budgetが空では登録できない' do
        @budget.daily_goods_budget = nil
        @budget.valid?
        expect(@budget.errors.full_messages).to include "Daily goods budget can't be blank"
      end

      it 'clothing_beauty_budgetが空では登録できない' do
        @budget.clothing_beauty_budget = nil
        @budget.valid?
        expect(@budget.errors.full_messages).to include "Clothing beauty budget can't be blank"
      end

      it 'entertainment_budgetが空では登録できない' do
        @budget.entertainment_budget = nil
        @budget.valid?
        expect(@budget.errors.full_messages).to include "Entertainment budget can't be blank"
      end

      it 'transportation_budgetが空では登録できない' do
        @budget.transportation_budget = nil
        @budget.valid?
        expect(@budget.errors.full_messages).to include "Transportation budget can't be blank"
      end

      it 'health_medical_budgetが空では登録できない' do
        @budget.health_medical_budget = nil
        @budget.valid?
        expect(@budget.errors.full_messages).to include "Health medical budget can't be blank"
      end

      it 'education_budgetが空では登録できない' do
        @budget.education_budget = nil
        @budget.valid?
        expect(@budget.errors.full_messages).to include "Education budget can't be blank"
      end

      it 'insurance_budgetが空では登録できない' do
        @budget.insurance_budget = nil
        @budget.valid?
        expect(@budget.errors.full_messages).to include "Insurance budget can't be blank"
      end

      it 'special_expenses_budgetが空では登録できない' do
        @budget.special_expenses_budget = nil
        @budget.valid?
        expect(@budget.errors.full_messages).to include "Special expenses budget can't be blank"
      end

      it 'total_budgetが空では登録できない' do
        @budget.total_budget = nil
        @budget.valid?
        expect(@budget.errors.full_messages).to include "Total budget can't be blank"
      end

      it 'housing_budgetが整数でない場合は登録できない' do
        @budget.housing_budget = 'string'
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Housing budget is not a number'
      end

      it 'food_budgetが整数でない場合は登録できない' do
        @budget.food_budget = 'string'
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Food budget is not a number'
      end

      it 'utilities_budgetが整数でない場合は登録できない' do
        @budget.utilities_budget = 'string'
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Utilities budget is not a number'
      end

      it 'communication_budgetが整数でない場合は登録できない' do
        @budget.communication_budget = 'string'
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Communication budget is not a number'
      end

      it 'daily_goods_budgetが整数でない場合は登録できない' do
        @budget.daily_goods_budget = 'string'
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Daily goods budget is not a number'
      end

      it 'clothing_beauty_budgetが整数でない場合は登録できない' do
        @budget.clothing_beauty_budget = 'string'
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Clothing beauty budget is not a number'
      end

      it 'entertainment_budgetが整数でない場合は登録できない' do
        @budget.entertainment_budget = 'string'
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Entertainment budget is not a number'
      end

      it 'transportation_budgetが整数でない場合は登録できない' do
        @budget.transportation_budget = 'string'
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Transportation budget is not a number'
      end

      it 'health_medical_budgetが整数でない場合は登録できない' do
        @budget.health_medical_budget = 'string'
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Health medical budget is not a number'
      end

      it 'education_budgetが整数でない場合は登録できない' do
        @budget.education_budget = 'string'
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Education budget is not a number'
      end

      it 'insurance_budgetが整数でない場合は登録できない' do
        @budget.insurance_budget = 'string'
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Insurance budget is not a number'
      end

      it 'special_expenses_budgetが整数でない場合は登録できない' do
        @budget.special_expenses_budget = 'string'
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Special expenses budget is not a number'
      end

      it 'total_budgetが整数でない場合は登録できない' do
        @budget.total_budget = 'string'
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Total budget is not a number'
      end

      it 'housing_budgetが0未満では登録できない' do
        @budget.housing_budget = -1
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Housing budget must be greater than or equal to 0'
      end

      it 'food_budgetが0未満では登録できない' do
        @budget.food_budget = -1
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Food budget must be greater than or equal to 0'
      end

      it 'utilities_budgetが0未満では登録できない' do
        @budget.utilities_budget = -1
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Utilities budget must be greater than or equal to 0'
      end

      it 'communication_budgetが0未満では登録できない' do
        @budget.communication_budget = -1
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Communication budget must be greater than or equal to 0'
      end

      it 'daily_goods_budgetが0未満では登録できない' do
        @budget.daily_goods_budget = -1
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Daily goods budget must be greater than or equal to 0'
      end

      it 'clothing_beauty_budgetが0未満では登録できない' do
        @budget.clothing_beauty_budget = -1
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Clothing beauty budget must be greater than or equal to 0'
      end

      it 'entertainment_budgetが0未満では登録できない' do
        @budget.entertainment_budget = -1
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Entertainment budget must be greater than or equal to 0'
      end

      it 'transportation_budgetが0未満では登録できない' do
        @budget.transportation_budget = -1
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Transportation budget must be greater than or equal to 0'
      end

      it 'health_medical_budgetが0未満では登録できない' do
        @budget.health_medical_budget = -1
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Health medical budget must be greater than or equal to 0'
      end

      it 'education_budgetが0未満では登録できない' do
        @budget.education_budget = -1
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Education budget must be greater than or equal to 0'
      end

      it 'insurance_budgetが0未満では登録できない' do
        @budget.insurance_budget = -1
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Insurance budget must be greater than or equal to 0'
      end

      it 'special_expenses_budgetが0未満では登録できない' do
        @budget.special_expenses_budget = -1
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Special expenses budget must be greater than or equal to 0'
      end

      it 'total_budgetが0未満では登録できない' do
        @budget.total_budget = -1
        @budget.valid?
        expect(@budget.errors.full_messages).to include 'Total budget must be greater than or equal to 0'
      end
    end
  end
end
