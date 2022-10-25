class Triangle
  # write code here

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if is_triangle?
      sides = [a, b, c]
      if sides.uniq.length == 1
        :equilateral
      elsif sides.uniq.length == 2
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end


  class TriangleError < StandardError
    def message
      'Thas is Invalid!'
    end
  end

  private

  def is_triangle?
    all_sides = [a, b, c].sort
    sorted = all_sides.pop
    sorted < all_sides.sum
  end

end