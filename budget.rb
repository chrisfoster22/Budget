class Budget

  def initialize(total)
    @total = total
    @expense = Expense.new
    @hold = Hold.new
  end

  def prompt
    "Would you like to add an Expense or a Hold?"
    answer = gets.chomp.downcase
    if answer == "expense"

      Budget.add_expense
    elsif answer == "hold"
      Budget.add_hold
    end
  end

  def add_expense
    @expense
  end



  "Welcome to Budgeter! How much money do you have to spend this month?"
  total = gets.chomp
  budget = Budget.new(total)
  budget.prompt
