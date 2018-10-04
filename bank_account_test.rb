require 'minitest/autorun'
require_relative 'bank_account'

class BankAccountTest < MiniTest::Unit::TestCase
  def test_starting_balance_equal_zero
    bank_account = BankAccount.new()
    assert_equal 0, bank_account.balance()
  end

  def test_check_balance
    bank_account = BankAccount.new()
    starting_balance = 0
    assert_equal "Your balance is $#{starting_balance}", bank_account.check_balance
  end

  def test_deposit
    bank_account = BankAccount.new(10)
    assert_equal 40, bank_account.deposit(30)
  end

  def test_withdraw
    bank_account = BankAccount.new(15)
    assert_equal 5, bank_account.withdraw(10)
  end

  def test_transfer_to
    bank_account = BankAccount.new(30)
    other_account = BankAccount.new()
    assert_equal 15, bank_account.transfer_to(other_account,15)
  end
end