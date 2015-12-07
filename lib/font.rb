# Information about styling of text.
# @note If there is a +Fonts+ folder in the game folder (in the working directory),
#   then the fonts contained the in the folder can be used even if they are not installed on the system.
class Font

  # Creates the font instance.
  # @overload initialize()
  #   Creates a font with all default values.
  # @overload initialize(name)
  #   Creates a font with the specified name(s).
  #   @param name [String, Array<String>] Name or names of fonts to use.
  # @overload initialize(name, size)
  #   Creates a font with the specified name(s) and size.
  #   @param name [String, Array<String>] Name or names of fonts to use.
  #   @param size [Fixnum] Size of font.
  def initialize(*agrs)
    fail NotImplementedError
  end

  # Name or names of the fonts to use.
  # Use an array to specify multiple fonts in a desired order.
  # @return [String, Array<String>]
  # @example Multiple fonts
  #   font.name = ['Myriad', 'Verdana']
  #   # In this example, if the higher priority font *Myriad* does not exist on the system,
  #   # the second choice *Verdana* will be used instead.
  attr_accessor :name

  # Size of the font.
  # This is the maximum height of the font in pixels.
  # For example, a size of 24 will usually have a pixel height of 23 or 24.
  # @return [Fixnum]
  attr_accessor :size

  # Indicates whether the font is bold.
  # @return [Boolean]
  attr_accessor :bold

  # Indicates whether the font is italicized.
  # @return [Boolean]
  attr_accessor :italic

  # Indicates whether the font has an outline (border).
  # @return [Boolean]
  attr_accessor :outline

  # Indicates whether the font has a drop shadow.
  # @return [Boolean]
  attr_accessor :shadow

  # Base color of the font.
  # Alpha values are also used when drawing the outline and shadow.
  # @return [Color]
  attr_accessor :color

  # Color of the outline (border).
  # @return [Color]
  attr_accessor :out_color

  class << self

    # Name or names of the default fonts for new fonts.
    # Use an array to specify multiple fonts in a desired order.
    # @return [String, Array<String>]
    # @note The initial value is "VL Gothic".
    attr_accessor :default_name

    # Default size for new fonts.
    # @return [Fixnum]
    # @note The initial value is *24*.
    attr_accessor :default_size

    # Default setting for bold for new fonts.
    # @return [Boolean]
    # @note The initial value is *false*.
    attr_accessor :default_bold

    # Default setting for italics for new fonts.
    # @return [Boolean]
    # @note The initial value is *false*.
    attr_accessor :default_italic

    # Default setting for drop shadows on new fonts.
    # @return [Boolean]
    # @note The initial value is *false*.
    attr_accessor :default_shadow

    # Default setting for outlines (borders) on new fonts.
    # @return [Boolean]
    # @note The initial value is *true*.
    attr_accessor :default_outline

    # Default base color for new fonts.
    # @return [Color]
    # @note The initial value is *white* (255, 255, 255, 255).
    attr_accessor :default_color

    # Default outline (border) color for new fonts.
    # @return [Color]
    # @note The initial value is *black* (0, 0, 0, 128).
    attr_accessor :default_out_color

    # Checks if a font exists on the system.
    # @param name [String] Name of the font to look for.
    # @return [Boolean] +true+ if the font is on the system, +false+ if it isn't.
    # @note This method also checks the +Fonts+ folder in the game folder.
    def exist?(name)
      fail NotImplementedError
    end

  end
end
