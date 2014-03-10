require 'forwardable'

require 'rrope/version'

module Rope
  class Rope
    extend Forwardable

    def_delegators :@root, :to_s, :length, :rebalance!

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

    def +(other)
      Rope.new(concatenate(other))
    end

    def ==(other)
      to_s == other.to_s
    end

    def dup
      Rope.new(root)
    end

    def slice(*args)
      # TODO:
    end
    alias :[] :slice

    protected
      attr_reader :root

    private

      def concatenate(other)
        case other
          when String
            # TODO:
          when Rope
            # TODO:
        end
      end
  end
end
