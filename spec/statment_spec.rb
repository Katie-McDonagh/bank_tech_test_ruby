# frozen_string_literal: true

require 'statement'

describe Statement do
  subject(:statement) { Statement.new }

  let(:history) do
    [{ date: '1/01/20', credit: 10, balance: 10 }]
  end

  describe '#statment_print' do
    let(:statement_print) do
      " Date    || Credit  || Debit  || Balance\n" \
      " 1/01/20 || 10 ||   || 10\n" \
    end
    it 'prints the transaction_history' do
      expect { statement.statement_print(history) }.to output(statement_print).to_stdout
    end
  end
end
