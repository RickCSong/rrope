module Rope
  class StringNode < Node
    alias_method :subtree_weight, :weight

    def initialize(string)
      @data = string
      @weight = string.length
      @depth = 0
    end

    def index(i)
      @data[i]
    end
    alias_method :[], :index

  end
end