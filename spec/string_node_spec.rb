require 'spec_helper'

describe Rope::StringNode do
  let(:node) { Rope::StringNode.new('0123456789') }

  context '#subtree_weight' do
    it 'should respond to subtree_weight' do
      expect(node.subtree_weight).to eql(10)
    end
  end

  context '#index' do
    it 'should return the correct character for a given index' do
      expect(node.index(0)).to eql('0')
    end

    it 'should return nil when attempting to retrieve character ouf of index' do
      expect(node.index(100)).to equal(nil)
    end

    it 'should allow bracket syntax to refer for index retrieval' do
      expect(node[0]).to eql('0')
    end
  end
end