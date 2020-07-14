class Transaction
  attr_reader :balance, :history

  DEFAULT_BALANCE = 0
  def initialize
    @balance = DEFAULT_BALANCE
    @history = []
  end

  def deposit(amount)
    @balance += amount
    @history.push({credit: amount})
  end

  def withdraw(amount)
    @balance -= amount
  end
    
end
