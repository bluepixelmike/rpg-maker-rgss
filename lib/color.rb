# Color components grouped into a single object.
# Colors consist of red, green, blue, and alpha.
# Each color component uses a floating-point value
# and is restricted to the range 0 to 255.
class Color

  # Creates the color object and sets the initial values.
  # @overload initialize(red = 0, green = 0, blue = 0, alpha = 0)
  #   Initializes all components (including alpha) to 0.
  # @overload initialize(red, green, blue, alpha = 255)
  #   Initializes the color components to the specified values.
  #   @param red [Float] Value of the red component - 0 to 255.
  #   @param green [Float] Value of the green component - 0 to 255.
  #   @param blue [Float] Value of the blue component - 0 to 255.
  #   @param alpha [Float] Value of the alpha component - 0 to 255.
  #     0 is completely transparent and 255 is fully opaque.
  def initialize(*args)
    fail NotImplementedError
  end

  # Sets all components at once.
  # @overload set(red, green, blue, alpha = 255)
  #   Sets all of the color components to the specified values.
  #   @param red [Float] Value of the red component - 0 to 255.
  #   @param green [Float] Value of the green component - 0 to 255.
  #   @param blue [Float] Value of the blue component - 0 to 255.
  #   @param alpha [Float] Value of the alpha component - 0 to 255.
  #     0 is completely transparent and 255 is fully opaque.
  # @overload set(color)
  #   Copies the component values from another color.
  #   @param color [Color] Color to copy component values from.
  def set(*args)
    fail NotImplementedError
  end

  # Value of the red component from 0 to 255.
  # Out of range values are automatically corrected.
  # @return [Float]
  attr_accessor :red

  # Value of the green component from 0 to 255.
  # Out of range values are automatically corrected.
  # @return [Float]
  attr_accessor :green

  # Value of the blue component from 0 to 255.
  # Out of range values are automatically corrected.
  # @return [Float]
  attr_accessor :blue

  # Value of the alpha component from 0 to 255.
  # 0 is completely transparent and 255 is fully opaque.
  # Out of range values are automatically corrected.
  # @return [Float]
  attr_accessor :alpha

end
