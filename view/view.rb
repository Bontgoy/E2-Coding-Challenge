class ListDisplay
	# view controls

	def initialize
		puts %Q{Enter the number of tests you would like to run on a Utopian Tree.}
	end

	def invalid_test_count
		puts "This program does not allow more than 10 tests at once."
	end

	def no_test_count
		puts "Well that was easy."
	end

	def cycle_caller
		puts "Each test requires choosing a number growth cycles to examine.  These cycles must remain between 0 and 60."
	end

	def tree_pick(get_cycle)
		puts "How many growth cycles for test #{get_cycle}?"
	end

	def improper_cycles
		puts "These cycles do not match the params"
	end

	def results(test, height)
		if height == 1
			puts "Test #{test} returns #{height} meter."
		else
			puts "Test #{test} returns #{height} meters."
		end
	end
end