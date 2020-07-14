require 'transaction'

describe Transaction do

  DATE = Time.now.strftime('%d/%m/%y')

subject(:transaction) { Transaction.new }

let(:transaction_deposit) do
  { credit: 10, balance: 10, date: DATE }
end

let(:transaction_withdraw) do
  { debit: 10, balance: -10, date: DATE }
end

describe '#initialize' do
  it 'is initialized with a starting balance of zero' do
    expect(subject.balance).to eq(0)
  end

  it 'is initialized with history array to save transactions' do
    expect(subject.history).to eq([])
  end
end

describe '#deposit' do
  it { is_expected.to respond_to(:deposit).with(1).argument }

  it 'can top up the balance' do
    expect { subject.deposit 1 }.to change { subject.balance }.by 1
  end

  it 'adds the deposit transaction to the history' do
    subject.deposit(10)
    expect(subject.history).to include(transaction_deposit)
  end
end

describe '#withdraw' do
  it { is_expected.to respond_to(:withdraw).with(1).argument }

  it 'can deduct from the balance' do
    expect { subject.withdraw 1 }.to change { subject.balance }.by -1
  end

  it 'adds the withdraw transaction to the history' do
    subject.withdraw(10)
    expect(subject.history).to include(transaction_withdraw)
  end
end

describe 'History array' do
  it 'sequentially deducts the balance and records it in the history' do
    subject.deposit(10)
    subject.withdraw(5)
    expect(subject.history).to eq([{ credit: 10, balance: 10, date: DATE }, { debit: 5, balance: 5, date: DATE }])
  end

  it 'adds the date of the transaction to the history' do
    subject.deposit(10)
    expect(subject.history).to eq([{ balance: 10, credit: 10, date: DATE }])
  end
end
end
