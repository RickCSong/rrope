module Rope
  class StringNode < Node
    extend Forwardable
    def_delegators :@data, :slice
    def_delegator :@data, :slice, :char_at

    def initialize(string)
      @data = string
      @length = string.length
      @depth = 0
    end

    def subtree(from, length)

    end

  end
end