class UtopianTree
	attr_accessor :height

	def initialize
		@height = 0
	end

	def plant
		@height += 1
	end
end