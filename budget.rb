class Budget

  def initialize(total)
    @total = total
  end

  def prompt
    puts "Would you like to add an Expense or a Hold?"
    answer = gets.chomp.downcase
    if answer == "expense"
      puts "What did you expend money on?"
      name = gets.chomp
      puts "How much did it cost?"
      amount = gets.chomp.to_i
      Expense.new(name, amount)
    elsif answer == "hold"
      puts "What did you need to hold for?"
      name = gets.chomp
      puts "How much are you holding?"
      amount = gets.chomp.to_i
      Hold.new(name, amount)
    end
  end

end

  puts "Welcome to Budgeter! How much money do you have to spend this month?"
  total = gets.chomp
  budget = Budget.new(total)
  budget.prompt
