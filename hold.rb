class Hold

  attr_reader :name, :amount

  def initialize(name, amount)
    @name = name
    @amount = amount
  end

  def self.list
    Hold.each {|h| puts "#{h.name}: #{h.amount}"}
  end

end
