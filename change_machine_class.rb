class Change
  def initialize
    @coins = {
              dollars: {amount: 1.00, quantity: 0 },
              quarters: {amount: 0.25, quantity: 0 },
              dimes: {amount: 0.10, quantity: 0 },
              nickels: {amount: 0.05, quantity: 0 },
              pennies: {amount: 0.01, quantity: 0 }}
  end

  def get_amount_due
    print 'Amount due : '
    @due = gets.chomp.to_f
  end

  def get_closest_dollar
  end

  def get_amount_tendered
    puts 'What did the customer supply?'
    @tendered = gets.chomp.to_f
  end

  def calculate_due
    @total_due = @tendered - @due
  end

  def calculate_coins
    @coins.each do |key,value|
      value[:quantity] = (@total_due / value[:amount]).to_i
      @total_due = (@total_due % value[:amount]).round(2)
    end
  end

  def display_due
    puts "The change due is $#{@total_due}"
  end

  def display_coins
    puts "You should issue : " + '/n'
    @coins.each do |key,value|
      puts "#{value[:quantity]} #{key.to_s}"
    end
  end
end
