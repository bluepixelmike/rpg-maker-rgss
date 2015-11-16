# Color adjustments grouped into a single object.
# Tones consist of red, green, blue, and gray.
# Each color component uses a floating-point value
# and is restricted to the range -255 to 255.
# Gray, however, has the range of 0 to 255.
# @note Setting gray to anything but 0 will increase processing time for color manipulation.
class Tone

  # Creates the tone object and sets the initial values.
  # @overload initialize(red = 0, green = 0, blue = 0, gray = 0)
  #   Initializes all components (including gray) to 0.
  # @overload initialize(red, green, blue, gray = 0)
  #   Initializes the color components to the specified values.
  #   @param red [Float] Value of the red component - -255 to 255.
  #   @param green [Float] Value of the green component - -255 to 255.
  #   @param blue [Float] Value of the blue component - -255 to 255.
  #   @param gray [Float] Value of the gray component - 0 to 255.
  def initialize(*args)
    fail NotImplementedError
  end

  # Sets all components at once.
  # @overload set(red, green, blue, gray = 255)
  #   Sets all of the color components to the specified values.
  #   @param red [Float] Value of the red component - -255 to 255.
  #   @param green [Float] Value of the green component - -255 to 255.
  #   @param blue [Float] Value of the blue component - -255 to 255.
  #   @param gray [Float] Value of the gray component - 0 to 255.
  # @overload set(tone)
  #   Copies the component values from another tone.
  #   @param tone [Tone] Tone to copy component values from.
  # @return [self]
  def set(*args)
    fail NotImplementedError
  end

  # Value of the red component from -255 to 255.
  # Out of range values are automatically corrected.
  # @return [Float]
  attr_accessor :red

  # Value of the green component from -255 to 255.
  # Out of range values are automatically corrected.
  # @return [Float]
  attr_accessor :green

  # Value of the blue component from -255 to 255.
  # Out of range values are automatically corrected.
  # @return [Float]
  attr_accessor :blue

  # Value of the gray component from 0 to 255.
  # Out of range values are automatically corrected.
  # @return [Float]
  attr_accessor :gray

end
