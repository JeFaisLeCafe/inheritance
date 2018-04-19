require 'gosu'
require_relative 'snake'
require_relative 'food'

class Game < Gosu::Window
  WIDTH = 32
  HEIGHT = 24
  START_SPEED = 0.1

  def initialize
    super WIDTH * Snake::SIZE, HEIGHT * Snake::SIZE
    self.caption = "Snake"
    @snake = Snake.new
    @last_move = Time.now
    @food = Food.random(WIDTH, HEIGHT)
    @speed = START_SPEED
  end

  def update
    if still_in_bounds?
      if @snake.eat?(@food)
        @snake.length += 1
        @food = Food.random(WIDTH, HEIGHT)
        @speed = @speed * 0.95
        Gosu::Sample.new("eat.wav").play
      end
    else
      @snake = Snake.new
      @speed = START_SPEED
      Gosu::Sample.new("start.wav").play
    end

    if Gosu.button_down?(Gosu::KB_LEFT) && @snake.direction != "right"
      @snake.direction = "left"
    elsif Gosu.button_down?(Gosu::KB_RIGHT) && @snake.direction != "left"
      @snake.direction = "right"
    elsif Gosu.button_down?(Gosu::KB_UP) && @snake.direction != "bottom"
      @snake.direction = "top"
    elsif Gosu.button_down?(Gosu::KB_DOWN) && @snake.direction != "top"
      @snake.direction = "bottom"
    end

    return if (Time.now - @last_move) < @speed

    @snake.move(WIDTH, HEIGHT)
    @last_move = Time.now
  end

  def draw
    @snake.draw
    @food.draw
    font = Gosu::Font.new(20)
    font.draw(@snake.length - 1, WIDTH * (Snake::SIZE - 1), Snake::SIZE, 1, 1, 1, Gosu::Color::YELLOW)
  end

  private

  def still_in_bounds?
    @snake.x >= 0 &&
      @snake.x <= WIDTH * Snake::SIZE &&
      @snake.y >= 0 &&
      @snake.y <= HEIGHT * Snake::SIZE
  end
end

Game.new.show
