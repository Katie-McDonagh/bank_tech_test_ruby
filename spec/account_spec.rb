require 'account'

describe Account do
  subject(:account) { Account.new(transaction) }
  let(:transaction) { double('transaction') }

  describe '#initialize' do
    it 'creates an instance of transactions' do
      expect(account.transaction).to eq(transaction)
    end
  end

  describe '#deposit' do
    it 'calls the deposit method on transaction' do
      allow(transaction).to receive(:deposit)
      account.deposit(10)
      expect(transaction).to have_received(:deposit)
    end
  end

    describe '#withdraw' do
    it 'calls the withdraw method on transaction' do
      allow(transaction).to receive(:withdraw)
      account.withdraw(5)
      expect(transaction).to have_received(:withdraw)
    end
  end
end
