require_relative 'transaction'
require_relative 'statment'
class Account
  attr_reader :transaction, :statement

  def initialize(transaction, statement)
    @transaction = transaction
    @statement = statement
  end

  def deposit(amount)
    @transaction.deposit(amount)
  end

  def withdraw(amount)
    @transaction.withdraw(amount)
  end

  def print_statement
    @statement.statment_print(transaction.history)
  end
end
