require_relative '../models/utopian_tree'
require_relative '../models/growth_cycles'
require_relative '../view/view'

class DataControl
	attr_reader :display

	def initialize 
		@display = ListDisplay.new
	end

	def runner	
		t = gets.chomp.to_i
		test_counter = t
		test_number = 1
		tree_tracker = []

		# wrong input test errors
		if test_counter > 10
			display.invalid_test_count
		elsif test_counter < 1
			display.no_test_count
		end

		display.cycle_caller
		while test_counter >= 1 && test_counter <= 10
			display.tree_pick(test_number)
			number_of_cycles = gets.chomp.to_i
				# growth cycle safegaurd
				while number_of_cycles < 0 || number_of_cycles > 60
					display.improper_cycles
					number_of_cycles = gets.chomp.to_i
				end
			tree_tracker << number_of_cycles
			test_counter -= 1
			test_number += 1
		end

		run_tests(tree_tracker)

	end

	private

	def run_tests(cycle_times)
		tree = UtopianTree.new
		tree.plant
		
		cycle_times.each_with_index do |cycles, index|
			growth = GrowthCycles.new(tree)
			growth.growth_counter(cycles)
			display.results(index + 1, tree.height)
			tree.height = 1
		end
	end
end

