class BankAccount
  @@account_amount = 0
  # attr_accessor :account_number, :checking_balance, :saving_balance, :interest_rate
  def initialize
    @account_number = generate_account
    @checking_balance = 0
    @saving_balance = 0
    @@account_amount += 1
    puts "There are #{@@account_amount} bank account in our bank"
  end
  def deposit_checking_account(money)
    @checking_balance += money
    self
  end
  def deposit_saving_account(money)
    @saving_balance += money
    self
  end
  def withdraw_checking_account(money)
    if money > @checking_balance
      puts "Not enough money in checking account"
    else
      @checking_balance -= money
      self
    end
  end
  def withdraw_saving_account(money)
    if money > @saving_balance
      puts "Not enough money in saving account"
    else
      @saving_balance -= money
      self
    end
  end
  def total_amount
    puts "The amount of money in your checking account is #{@checking_balance}"
    puts "The amount of money in your saving account is #{@saving_balance}"
    total = @checking_balance + @saving_balance
    puts "The total amount of money in your account is #{total}"
  end
  def account_information
    puts "Your account info: "
    puts "The account number is #{@account_number}"
    total_amount
    # interestrate = interest_rate
    puts "The interest rate for the account is #{interest_rate}"
  end
  private
  def interest_rate
    1.06
  end
  def generate_account
    100 + rand(899)
  end
end

houyuan = BankAccount.new
# puts houyuan.account_number
# puts houyuan.checking_balance
# puts houyuan.saving_balance
houyuan.deposit_checking_account(500)
# puts houyuan.checking_balance
houyuan.withdraw_checking_account(299)
# puts houyuan.checking_balance
houyuan.withdraw_checking_account(300)
# puts houyuan.checking_balance
houyuan.deposit_checking_account(800)
puts houyuan.total_amount
houyuan.account_information

# houyuan.checking_balance = 1000000000000000;


evelyn  = BankAccount.new
evelyn.account_information
