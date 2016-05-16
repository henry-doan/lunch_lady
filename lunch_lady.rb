number_main = {"Taco" => 0.50, "Pizza" => 2.00, "Soup" => 3.00, "Burger" => 4.00}
number_side = {"Fries" => 1.00, "Veggies" => 1.00, "Bacon" => 2.00, "Onion Ring" => 1.00, "Nuggets" => 1.50}

@main_dish =%w(Taco Pizza Soup Burger)
@side_dish =%w(Fries Veggies Bacon Onion\ Ring Nuggets)

@order = [ ]
@side = [ ]
@main = [ ]
def welcome
	puts 'Can I take your order?'
end

def main_dish
	@main_dish.each_with_index { |main_dish, i| puts "#{i + 1}. "  + main_dish}
	puts 'choose the numbers by the options bellow'
	@main == gets.strip.to_i
	
	unless @main == 1 || @main == 2 || @main == 3 || @main == 4
		puts 'What was that? please put the number by the menu option.'
		main_dish
	end
end

def side_dish
	@side_dish.each_with_index { |side_dish, i| puts "#{i + 1}. "  + side_dish}
	puts 'choose the number by the side options bellow'
	@side == gets.strip.to_i
	unless @side == 1 || @side == 2 || @side == 3 || @side == 4 || @side == 5
		puts 'What was that? please put the number by the menu option.'
		side_dish
	end
end

def order()
	@side + @main
end




while true
	welcome
	main_dish
	side_dish
	puts '#{order}'
	puts "type 'o' to place order"
	exit(0) if gets.strip.downcase == 'o'
end






# class Options


# 	def initialize(main_dish, side_dish, order)
# 		@main_dish = main_dish
# 		@side_dish = side_dish
# 		@order = order
# 	end

# 	def main_dish
# 		puts 'here'
# 	end

# 	def side_dish

# 	end

# 	def order

# 	end
# end

# customer = Options.new('rock')
# customer.main_dish
# customer.side_dish
# customer.order