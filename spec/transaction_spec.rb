require 'transaction'

describe Transaction do

  let(:transaction1) do
    { credit: '10' }
  end

  it 'is initialized with a starting balance of zero' do
    expect(subject.balance).to eq(0)
  end

  it 'is initialized with history array to save transactions' do
    expect(subject.history).to eq([])
  end

  describe '#deposit' do

  it { is_expected.to respond_to(:deposit).with(1).argument }

  it 'can top up the balance' do
    expect{ subject.deposit 1 }.to change{ subject.balance }.by 1
  end

  it 'adds the deposit transaction to the history' do 
    subject = Transaction.new
    subject.deposit(10)
    expect(subject.history).to eq([{credit:10}])
end

  describe '#withdraw' do

  it { is_expected.to respond_to(:withdraw).with(1).argument }

  it 'can deduct from the balance' do

    expect{ subject.withdraw 1 }.to change{ subject.balance }.by -1
  end

end
end