require 'rails_helper'

RSpec.describe HouseholdAccount, type: :model do
  before do
    @household_account = FactoryBot.build(:household_account)
  end

  describe '家計簿の投稿' do
    context '投稿できるとき' do
      it '全項目が存在すれば投稿できる' do
        expect(@household_account).to be_valid
      end

      it 'descriptionが空でも投稿できる' do
        @household_account.description = ''
        expect(@household_account).to be_valid
      end
    end

    context '投稿できないとき' do
      it 'yearが2024~2040の範囲外では投稿できない' do
        @household_account.year = 2023
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include "Year is not included in the list"
      end

      it 'month_idが1では投稿できない' do
        @household_account.month_id = 1
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include "Month can't be blank"
      end

      it 'yearとmonth_idの組み合わせが既に存在する場合は投稿できない' do
        duplicate_account = @household_account.dup
        @household_account.save
        duplicate_account.valid?
        expect(duplicate_account.errors.full_messages).to include "Year (and month) has already been taken. Please select a different date."
      end

      it 'housingが空では投稿できない' do
        @household_account.housing = nil
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include "Housing can't be blank"
      end

      it 'foodが空では投稿できない' do
        @household_account.food = nil
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include "Food can't be blank"
      end

      it 'utilitiesが空では投稿できない' do
        @household_account.utilities = nil
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include "Utilities can't be blank"
      end

      it 'communicationが空では投稿できない' do
        @household_account.communication = nil
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include "Communication can't be blank"
      end

      it 'daily_goodsが空では投稿できない' do
        @household_account.daily_goods = nil
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include "Daily goods can't be blank"
      end

      it 'clothing_beautyが空では投稿できない' do
        @household_account.clothing_beauty = nil
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include "Clothing beauty can't be blank"
      end

      it 'entertainmentが空では投稿できない' do
        @household_account.entertainment = nil
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include "Entertainment can't be blank"
      end

      it 'transportationが空では投稿できない' do
        @household_account.transportation = nil
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include "Transportation can't be blank"
      end

      it 'health_medicalが空では投稿できない' do
        @household_account.health_medical = nil
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include "Health medical can't be blank"
      end

      it 'educationが空では投稿できない' do
        @household_account.education = nil
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include "Education can't be blank"
      end

      it 'insuranceが空では投稿できない' do
        @household_account.insurance = nil
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include "Insurance can't be blank"
      end

      it 'special_expensesが空では投稿できない' do
        @household_account.special_expenses = nil
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include "Special expenses can't be blank"
      end

      it 'totalが空では投稿できない' do
        @household_account.total = nil
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include "Total can't be blank"
      end

      it 'descriptionが501文字以上では投稿できない' do
        @household_account.description = 'a' * 501
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include "Description is too long (maximum is 500 characters)"
      end

      it 'housingが整数でない場合は投稿できない' do
        @household_account.housing = 'string'
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Housing is not a number'
      end

      it 'foodが整数でない場合は投稿できない' do
        @household_account.food = 'string'
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Food is not a number'
      end

      it 'utilitiesが整数でない場合は投稿できない' do
        @household_account.utilities = 'string'
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Utilities is not a number'
      end

      it 'communicationが整数でない場合は投稿できない' do
        @household_account.communication = 'string'
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Communication is not a number'
      end

      it 'daily_goodsが整数でない場合は投稿できない' do
        @household_account.daily_goods = 'string'
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Daily goods is not a number'
      end

      it 'clothing_beautyが整数でない場合は投稿できない' do
        @household_account.clothing_beauty = 'string'
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Clothing beauty is not a number'
      end

      it 'entertainmentが整数でない場合は投稿できない' do
        @household_account.entertainment = 'string'
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Entertainment is not a number'
      end

      it 'transportationが整数でない場合は投稿できない' do
        @household_account.transportation = 'string'
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Transportation is not a number'
      end

      it 'health_medicalが整数でない場合は投稿できない' do
        @household_account.health_medical = 'string'
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Health medical is not a number'
      end

      it 'educationが整数でない場合は投稿できない' do
        @household_account.education = 'string'
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Education is not a number'
      end

      it 'insuranceが整数でない場合は投稿できない' do
        @household_account.insurance = 'string'
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Insurance is not a number'
      end

      it 'special_expensesが整数でない場合は投稿できない' do
        @household_account.special_expenses = 'string'
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Special expenses is not a number'
      end

      it 'totalが整数でない場合は投稿できない' do
        @household_account.total = 'string'
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Total is not a number'
      end

      it 'housingが0未満では投稿できない' do
        @household_account.housing = -1
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Housing must be greater than or equal to 0'
      end

      it 'foodが0未満では投稿できない' do
        @household_account.food = -1
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Food must be greater than or equal to 0'
      end

      it 'utilitiesが0未満では投稿できない' do
        @household_account.utilities = -1
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Utilities must be greater than or equal to 0'
      end

      it 'communicationが0未満では投稿できない' do
        @household_account.communication = -1
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Communication must be greater than or equal to 0'
      end

      it 'daily_goodsが0未満では投稿できない' do
        @household_account.daily_goods = -1
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Daily goods must be greater than or equal to 0'
      end

      it 'clothing_beautyが0未満では投稿できない' do
        @household_account.clothing_beauty = -1
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Clothing beauty must be greater than or equal to 0'
      end

      it 'entertainmentが0未満では投稿できない' do
        @household_account.entertainment = -1
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Entertainment must be greater than or equal to 0'
      end

      it 'transportationが0未満では投稿できない' do
        @household_account.transportation = -1
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Transportation must be greater than or equal to 0'
      end

      it 'health_medicalが0未満では投稿できない' do
        @household_account.health_medical = -1
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Health medical must be greater than or equal to 0'
      end

      it 'educationが0未満では投稿できない' do
        @household_account.education = -1
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Education must be greater than or equal to 0'
      end

      it 'insuranceが0未満では投稿できない' do
        @household_account.insurance = -1
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Insurance must be greater than or equal to 0'
      end

      it 'special_expensesが0未満では投稿できない' do
        @household_account.special_expenses = -1
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Special expenses must be greater than or equal to 0'
      end

      it 'totalが0未満では投稿できない' do
        @household_account.total = -1
        @household_account.valid?
        expect(@household_account.errors.full_messages).to include 'Total must be greater than or equal to 0'
      end
    end
  end
end
