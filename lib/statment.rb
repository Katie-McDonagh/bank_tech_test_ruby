# frozen_string_literal: true

class Statement
  def statement_print(history)
    puts ' Date    || Credit  || Debit  || Balance'
    history.reverse_each do |transaction|
      print " #{transaction[:date]} ||",
            " #{transaction[:credit]} ||",
            " #{transaction[:debit]}  ||",
            " #{transaction[:balance]}\n"
    end
  end
end
