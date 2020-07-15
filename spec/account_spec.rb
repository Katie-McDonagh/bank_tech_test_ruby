# frozen_string_literal: true

require 'account'
require 'statment'

describe Account do
  subject(:account) { Account.new(transaction, statement) }
  let(:transaction) { double('transaction') }
  let(:statement) { double('statement') }

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

  describe '#print_statement' do
    before do
      allow(statement).to receive(:statment_print)
      allow(transaction).to receive(:history)
    end

    # it 'calls the statment print method on statement' do
    #   account.print_statement
    #   expect(statement).to have_received(:statment_print)
    # end
    it 'calls the transaction_history method on transactions' do
      account.print_statement
      expect(transaction).to have_received(:history)
    end
  end
end
