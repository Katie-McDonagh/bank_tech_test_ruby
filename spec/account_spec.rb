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
    it 'calls the deposit method on transactions' do
      allow(transaction).to receive(:deposit)
      account.deposit(10)
      expect(transaction).to have_received(:deposit)
    end
  end

  # describe '#withdraw' do
  #   it 'calls the withdraw method on transactions' do
  #     allow(transactions).to receive(:withdraw)
  #     bank_account.withdraw(5)
  #     expect(transactions).to have_received(:withdraw)
  #   end
  # end

  # describe '#print_statement' do
  #   before do
  #     allow(statement).to receive(:pretty_print)
  #     allow(transactions).to receive(:transaction_history)
  #   end

  #   it 'calls the pretty_print method on statements' do
  #     bank_account.print_statement
  #     expect(statement).to have_received(:pretty_print)
  #   end
  #   it 'calls the transaction_history method on transactions' do
  #     bank_account.print_statement
  #     expect(transactions).to have_received(:transaction_history)
  #   end
  # end
end
