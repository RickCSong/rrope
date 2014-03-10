module Rope
  class ConcatentationNode < Node
    attr_reader :left, :right

    def initialize(left, right)
      @left = left
      @right = right

      @length = left.length + right.length
      @depth = [left.depth, right.depth].max + 1
    end

    def data
      left.data + right.data
    end

    def index(i)

    end


  end
end