require_relative '../models/growth_cycles'
require_relative '../models/utopian_tree'

describe 'tree' do
	let(:tree) { UtopianTree.new }

  it 'have the height of 1 when planted' do
  	tree.plant
    expect(tree.height).to eq(1)
  end

end

describe 'growth' do
	let(:new_tree) { UtopianTree.new }
	let(:growing) { GrowthCycles.new(new_tree) }
	it 'should have a tree object as a variable' do
		expect(growing).to be(growing)
	end

	it 'should double in size in the spring' do
		new_tree.plant
		expect(new_tree.height).to eq(1)
		growth = GrowthCycles.new(new_tree)
		growth.growth_counter(1)
		expect(new_tree.height).to eq(2)
	end

	it 'should add 1 in the summer' do
		new_tree.plant
		expect(new_tree.height).to eq(1)
		growth = GrowthCycles.new(new_tree)
		growth.growth_counter(2)
		expect(new_tree.height).to eq(3)
	end

	it 'should be 7 meters tall after 4 cycles' do
		new_tree.plant
		expect(new_tree.height).to eq(1)
		growth = GrowthCycles.new(new_tree)
		growth.growth_counter(4)
		expect(new_tree.height).to eq(7)
	end
end
