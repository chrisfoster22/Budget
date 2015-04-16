require_relative "hold"
require_relative "expense"

class Budget

  attr_reader :total

  def initialize(total)
    @total = total.to_i
  end

  def prompt
    puts "What would you like to do?"
    puts "1: Add Expense or Hold"
    puts "2: List Expenses"
    puts "3: List Holds"
    puts "4: Show Available Amount"
    answer = gets.chomp.to_i
    if answer == 1
      add_something
    elsif answer == 2
      list("Expense")
    elsif answer == 3
      list("Hold")
    elsif answer == 4
      available
    end
  end

  def list(type)
    if type == "Expense"
      Expense.list
    else
      Hold.list
    end
    prompt
  end

  def add_something
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
    prompt
  end

  def available
    puts "$#{@total - (Expense.total) - (Hold.total)}"
    prompt
  end

end

  puts "Welcome to Budgeter! How much money do you have to spend this month?"
  total = gets.chomp
  budget = Budget.new(total)
  budget.prompt
