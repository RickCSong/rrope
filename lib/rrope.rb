require 'forwardable'

require 'rrope/version'
require 'rrope/node'
require 'rrope/string_node'
require 'rrope/concat_node'

require 'rrope/string'

module Rope
  class Rope
    extend Forwardable

    def_delegators :@root, :to_s, :weight, :rebalance!

    def initialize(arg=nil)
      case arg
        when Node
          @root = arg
        when NilClass
          @root = StringNode.new('')
        else
          @root = StringNode.new(arg.to_s)
      end
    end

    def ==(other)
      to_s == other.to_s
    end

    def dup
      Rope.new(root)
    end

    # Returns the character at position i
    def index(i)
      root.index(i)
    end
    alias_method :[], :index

    def +(other)
      Rope.new(concatenate(other))
    end
    alias_method :concat, :+

    def rebalance!

    end

    protected
      attr_reader :root

    private

      def concatenate(other)
        case other
          when String
            ConcatenationNode.new(root, StringNode.new(other))
          when Rope
            ConcatenationNode.new(root, other.root)
        end
      end
  end
end
