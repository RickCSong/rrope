class String
  def to_rope
    Rope::Rope.new(self)
  end
end