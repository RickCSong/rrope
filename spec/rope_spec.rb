require 'spec_helper'

describe Rope do
  context '#initialize' do
    it 'can be constructed using the Rope constructor' do
      #To change this template use File | Settings | File Templates.
      rope = Rope::Rope.new("hello world")
      expect(rope.to_s).to eql("hello world")
    end

    it 'can be constructed using the to_rope method on a string' do
      rope = 'hello world'.to_rope
      expect(rope).to be_kind_of(Rope::Rope)
      expect(rope.to_s).to eql('hello world')
    end
  end

  context '#dup' do
    it 'should create a shallow copy' do
      rope = Rope::Rope.new
      dup_rope = rope.dup
      expect(rope).to eq(dup_rope)
      expect(rope).to_not eql(dup_rope)
    end
  end

  context '#concat' do
    it 'should concatenate a Rope and a String' do
      rope = Rope::Rope.new('hello')
      rope = rope.concat(' world')
      expect(rope.to_s).to eql('hello world')
    end

    it 'should concatenate a Rope and another Rope' do
      rope = Rope::Rope.new('hello')
      other = Rope::Rope.new(' world')
      rope = rope.concat(other)
      expect(rope.to_s).to eql('hello world')
    end

    it 'should allow use of :+' do
      rope = Rope::Rope.new('hello')
      other = Rope::Rope.new(' world')
      rope = rope + other
      expect(rope.to_s).to eql('hello world')
    end
  end

  context '#index' do
    let(:rope) do
      rope = Rope::Rope.new('01234')
      rope += '56789'
      rope += 'abcde'
    end

    it 'should return correct character for a given index' do
      expect(rope.index(0)).to eql('0')
      expect(rope.index(5)).to eql('5')
      expect(rope.index(10)).to eql('a')
    end

    it 'should respond to bracket syntax' do
      expect(rope[0]).to eql('0')
      expect(rope[5]).to eql('5')
      expect(rope[10]).to eql('a')
    end
  end

  context '#split' do
    it '' do
      pending
    end
  end

  context '#insert' do
    it '' do
      pending
    end
  end

  context '#delete' do
    it '' do
      pending
    end
  end

  context '#report' do
    it '' do
      pending
    end
  end
end