class Snake
  attr_reader :x, :y
  attr_accessor :direction, :length
  SIZE = 20

  def initialize
    @x, @y = 0, 0
    @direction = "right"
    @length = 1
    @tail = []
  end

  def draw
    Gosu::draw_rect(@x, @y, SIZE, SIZE, Gosu::Color::WHITE)
    @tail.each do |tail|
      Gosu::draw_rect(tail.first, tail.last, SIZE, SIZE, Gosu::Color::WHITE)
    end
  end

  def move(width, height)
    @tail.unshift([ @x, @y ])
    @tail.pop if @tail.size == @length
    case @direction
      when "right" then @x += SIZE
      when "left" then @x -= SIZE
      when "bottom" then @y += SIZE
      when "top" then @y -= SIZE
    end
  end

  def eat?(food)
    @x == food.x && @y == food.y # Needs `attr_reader ;x, :y` on Food
  end
end
