class Expense

  attr_reader :name, :amount

  def initialize(name, amount)
    @name = name
    @amount = amount
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

  def self.list
    Expense.all.each {|e| puts "#{e.name}: $#{e.amount}"}
  end

  def self.total
    sum = 0
    Expense.all.each {|e| sum += e.amount }
    sum
  end

end
