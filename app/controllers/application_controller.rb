class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :set_rank

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]  # 環境変数を読み込む記述に変更
    end
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
