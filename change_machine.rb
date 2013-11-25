require './change_machine_class.rb'
require 'pry'

c = Change.new

c.get_amount_due
c.get_amount_tendered
c.calculate_due
c.display_due
c.calculate_coins
c.display_coins