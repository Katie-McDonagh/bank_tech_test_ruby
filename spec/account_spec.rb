require 'account'
describe Account do

  it 'is initialized with a starting balance' do
    expect(Account).to respond_to(:new).with(1).argument
  end

  it 'is initialized with a starting balance of zero' do
    expect(subject.balance).to eq(0)
  end
end
