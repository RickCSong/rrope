module Rope
  class Node
    attr_reader :weight, :depth, :data

    def +(other)
      ConcatenationNode.new(self, other)
    end

    def to_s
      data.to_s
    end
  end
end