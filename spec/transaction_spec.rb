require 'transaction'

describe Transaction do

  it 'is initialized with a starting balance of zero' do
    expect(subject.balance).to eq(0)
  end
end