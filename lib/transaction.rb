# frozen_string_literal: true

require 'date'

class Transaction
  attr_reader :balance, :history

  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
    @history = []
  end

  def deposit(amount)
    add_deposit(amount)
    @history.push({ credit: amount, balance: @balance, date: Date.today.strftime('%d/%m/%y') })
  end

  def withdraw(amount)
    raise 'Insufficient funds' if amount > @balance

    withdraw_funds(amount)
    @history.push({ debit: amount, balance: @balance, date: Date.today.strftime('%d/%m/%y') })
  end

  private

  def add_deposit(amount)
    @balance += amount
  end

  def withdraw_funds(amount)
    @balance -= amount
  end
end
