class Expense

  def initialize(name, amount)
    @name = name
    @amount = amount
  end

  def self.list
    Expense.each {|e| puts "#{e.name}: #{e.amount}"}
  end

end
