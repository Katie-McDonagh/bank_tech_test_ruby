require_relative 'transaction'
class Account
  
  attr_reader :balance

  def initialize(transaction)
    @balance = transaction.balance
  end



end
