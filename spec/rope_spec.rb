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

  context '#index' do
    it '' do
      pending
    end
  end

  context '#concat' do
    it '' do
      pending
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