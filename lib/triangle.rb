class Triangle



  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
    @triangle_lengths = [@a,@b, @c]
  end

  def kind
    # raise an error of triangle is invalid
    if @a <= 0 || @b <= 0 || @c <= 0
      raise TriangleError
    end

    @triangle_lengths = @triangle_lengths.sort

    if @triangle_lengths[0] + @triangle_lengths[1] <= @triangle_lengths[2]
      raise TriangleError
    end
    @a = @triangle_lengths[0]
    @b = @triangle_lengths[1]
    @c = @triangle_lengths[2]



    if @a == @b && @a == @c
      return :equilateral
    elsif @a != @b && @a != @c && @b != @c
       return :scalene
    else
      return :isosceles
    end
  end

  class TriangleError < StandardError

  end
end
