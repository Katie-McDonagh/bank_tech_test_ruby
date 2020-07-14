require 'account'
describe Account do

  it 'is initialized with a starting balance' do
    expect(subject).to respond_to(:new).with(1).argument
  end
end
