require_relative 'bank_account'
RSpec.describe BankAccount do
  before do
    @bank  = BankAccount.new
  end
  it 'has a method for retrieving the checking account balance' do
    expect(@bank.checking_balance).to eq(0)
  end

  it 'has a method for retrieving the total account balance' do
    expect(@bank.total_amount).to eq(0)
  end

  it 'has a method that allows the user to withdraw cash' do
    @bank.deposit_checking_account(200)
    expect(@bank.withdraw_checking_account(200).checking_balance).to eq(0)
  end

  it 'raise an error if a user tries to withdraw more money than they have in the account' do
    @bank.deposit_checking_account(200)
    expect(@bank.withdraw_checking_account(300)).not_to eq("Not enough money in checking account")
  end

  it 'Raises an error when the user tries to print out how many bank accounts there are' do
    expect{@bank.bank_account_amount}.to raise_error(NoMethodError)
  end

  it 'Raises an error when the user tries to set the interest rate' do
    @bank.interest_rate = 2
    expect{@bank.interest_rate}.to raise_error(NoMethodError)
  end

  it 'Raises an error when the user tries to set any attribute' do
    @bank.checking_balance = 2000000
    expect{@bank.account_number}.to raise_error(ArgumentError)
    expect{@bank.checking_balance}.to raise_error(ArgumentError)
    expect{@bank.saving_balance}.to raise_error(ArgumentError)
  end
end
