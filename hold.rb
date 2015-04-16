class Hold

  attr_reader :name, :amount

  def initialize(name, amount)
    @name = name
    @amount = amount
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

  def self.list
    all.each {|h| puts "#{h.name}: $#{h.amount}"}
  end

  def self.total
    sum = 0
    all.each {|h| sum += h.amount }
    sum
  end

end
