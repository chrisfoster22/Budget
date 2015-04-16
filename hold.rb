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
    Hold.all.each {|h| puts "#{h.name}: #{h.amount}"}
  end

  def self.total
    total = 0
    total = Hold.all.each {|e| total += e }
    total
  end

end
