require_relative 'transaction'
class Account
  
  attr_reader :transaction

  def initialize(transaction)
    @transaction = transaction
  end

  def deposit(amount)
    @transaction.deposit(amount)
  end

  def withdraw(amount)
    @transaction.withdraw(amount)
  end
end
