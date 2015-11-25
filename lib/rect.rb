# Rectangle class.
# Contains two-dimensional position and size.
class Rect

  # Creates the rectangle.
  # @overload initialize(x, y, width, height)
  #   Creates a rectangle with predefined values.
  #   @param x [Fixnum] X-coordinate of the rectangle's upper left corner.
  #   @param y [Fixnum] Y-coordinate of the rectangle's upper left corner.
  #   @param width [Fixnum] Width of the rectangle in pixels.
  #   @param height [Fixnum] Height of the rectangle in pixels.
  # @overload initialize()
  #   Creates an empty rectangle.
  #   The position will be set to (0, 0) and the size set to 0x0.
  def initialize
    fail NotImplementedError
  end

  # Updates all of the components at once.
  # @overload set(x, y, width, height)
  #   Sets all components.
  #   @param x [Fixnum] New x-coordinate of the rectangle's upper left corner.
  #   @param y [Fixnum] New y-coordinate of the rectangle's upper left corner.
  #   @param width [Fixnum] New width of the rectangle in pixels.
  #   @param height [Fixnum] New height of the rectangle in pixels.
  # @overload set(rect)
  #   Copies the components from another rectangle.
  #   @param rect [Rect] Rectangle to copy components from.
  # @return [self]
  def set(*args)
    fail NotImplementedError
  end

  # Sets all components to zero.
  # @return [self]
  def empty
    fail NotImplementedError
  end

  # X-coordinate of the rectangle's upper left corner.
  # @return [Fixnum]
  attr_accessor :x

  # Y-coordinate of the rectangle's upper left corner.
  # @return [Fixnum]
  attr_accessor :y

  # Width of the rectangle in pixels.
  # @return [Fixnum]
  attr_accessor :width

  # Height of the rectangle in pixels.
  # @return [Fixnum]
  attr_accessor :height

end
