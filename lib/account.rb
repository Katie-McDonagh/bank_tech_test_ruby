# frozen_string_literal: true

require_relative 'transaction'
require_relative 'statement'
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
    @statement.statement_print(transaction.history)
  end
end
