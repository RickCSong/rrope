module Rope
  class ConcatenationNode < Node
    attr_reader :left, :right

    def initialize(left, right)
      @left = left
      @right = right

      @weight = left.subtree_weight
      @depth = [left.depth, right.depth].max + 1
    end

    def data
      left.data + right.data
    end

    def index(i)
      i < self.weight ? @left.index(i) : @right.index(i - self.weight)
    end
    alias_method :[], :index

    def subtree_weight
      left.subtree_weight + right.subtree_weight
    end
  end
end