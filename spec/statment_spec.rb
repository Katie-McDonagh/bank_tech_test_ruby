require 'statment'

describe Statement do
  subject(:statement) { Statement.new }

  let(:history) do
    [{ date: '1/01/20', credit: 10, debit: 0, balance: 10 }]
  end

  describe '#statment_print' do
    let(:statment_print) do
      " Date    || Credit  || Debit  || Balance\n" \
      " 1/01/20 || 10 || 0  || 10\n" \

    end
    it 'prints the transaction_history' do
      expect { statement.statment_print(history) }.to output(statment_print).to_stdout
    end
  end
end