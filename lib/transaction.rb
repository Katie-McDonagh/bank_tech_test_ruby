require 'date'
class Transaction
  attr_reader :balance, :history

  DEFAULT_BALANCE = 0
  def initialize
    @balance = DEFAULT_BALANCE
    @history = []
  end

  def deposit(amount)
    @balance += amount
    @history.push({credit: amount, balance: @balance, date: Date.today.strftime('%d/%m/%y')})
  end

  def withdraw(amount)
    @balance -= amount
    @history.push({debit: amount, balance: @balance, date: Date.today.strftime('%d/%m/%y')})
  end
    
end
