class Statement

    def statment_print(history)
      header
      history.reverse_each do |transaction|
        print " #{transaction[:date]} ||",
              " #{transaction[:credit]} ||",
              " #{transaction[:debit]}  ||",
              " #{transaction[:balance]}\n"
      end
    end
  
    def header
      puts ' Date    || Credit  || Debit  || Balance'
    end
  end

