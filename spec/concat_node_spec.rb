require 'spec_helper'

describe Rope::ConcatenationNode do

  let(:node) do
    left = Rope::StringNode.new('01234')
    right = Rope::StringNode.new('56789')
    Rope::ConcatenationNode.new(left, right)
  end

  let(:other) do
    left = Rope::StringNode.new('abcde')
    right = Rope::StringNode.new('fghij')
    Rope::ConcatenationNode.new(left, right)
  end

  let(:deep_node) { Rope::ConcatenationNode.new(node, other) }

  context '#initialization' do
    it 'should return the correct weight for a node with two StringNode children' do
      expect(node.weight).to eql(5)
    end

    it 'should return the correct weight for a node with two ConcatenationNode children' do
      expect(deep_node.weight).to eql(10)
    end
  end

  context '#index' do
    it 'should return the correct character for a given index' do
      expect(node.index(0)).to eql('0')
      expect(node.index(9)).to eql('9')
      expect(node.index(10)).to eql(nil)
    end

    it 'should return the correct character even for a deep node' do
      expect(deep_node.index(0)).to eql('0')
      expect(deep_node.index(9)).to eql('9')
      expect(deep_node.index(10)).to eql('a')
      expect(deep_node.index(19)).to eql('j')
      expect(deep_node.index(20)).to eql(nil)
    end

    it 'should allow bracket syntax' do
      expect(deep_node[0]).to eql('0')
    end
  end

  it 'should do something' do

    #To change this template use File | Settings | File Templates.
    true.should == false
  end
end