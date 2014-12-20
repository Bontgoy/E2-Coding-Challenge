class UtopianTree
	attr_accessor :height

	def initialize
		@height = 0
	end

	def plant
		@height += 1
	end
end

class GrowthCycles

	def initialize(tree)
		@tree = tree
	end

	def growth_counter(cycles)
		while cycles > 0
			if cycles > 60
				cycles = 60
			end
			if cycles % 2 == 0
				spring
			else
				summer
			end
			cycles = cycles - 1
			if size_checker == true
				break
			end
		end
	end

	private

	def size_checker
		@tree.height >= 2147483647
	end

	def spring
		@tree.height *= 2
	end

	def summer
		@tree.height += 1
	end
end

tree_1 = UtopianTree.new
tree_1.plant
trees = GrowthCycles.new(tree_1)
trees.growth_counter(50)
trees.growth_counter(50)
puts tree_1.height
tree_2 = UtopianTree.new
tree_2.plant
trees = GrowthCycles.new(tree_2)
trees.growth_counter(70)
puts tree_2.height