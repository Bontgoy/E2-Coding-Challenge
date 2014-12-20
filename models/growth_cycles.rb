class GrowthCycles

	def initialize(tree)
		@tree = tree
	end

	def growth_counter(cycles)
		while cycles > 0
			if cycles % 2 == 0
				spring
			else
				summer
			end
			cycles -= 1
		end
	end

	private

	def spring
		@tree.height *= 2
	end

	def summer
		@tree.height += 1
	end
end