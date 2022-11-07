class Triangle
  # write code here
  attr_accessor = :a, :b,:c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid =(@a && @b && @c) > 0 &&
      @b + @c > @a &&
      @a + @b > @c &&
      @a + @c > @b &&
      @b + @c > @a
    raise TriangleError unless valid
    if @a.eql?(@b) && @b.eql?(@c)
      :equilateral
    elsif @a.eql?(@b) || @b.eql?(@c) || @a.eql?(@c)
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    puts "Error"
  end

end
