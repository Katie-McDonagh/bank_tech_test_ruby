require 'account'
require 'transaction'
describe Account do
  #subject(:account) { described_class.new(transaction: transaction) }

  #let(:transaction) { double (:transaction, balance: balance) }

  it 'is initialized with a starting balance' do
    expect(Account).to respond_to(:new).with(1).argument
  end

  xit 'is initialized with a starting balance of zero' do
    expect(subject.balance).to eq(0)
  end

  xit 'recieves the balance information from the Transaction class' do
    expect(subject.balance).to eq(balance)
  end
end
