# Graphical display container.
# Groups multiple renderable objects together into the same region on the screen.
# Objects extending past the viewport's bounds are clipped.
# Types that can be contained in a viewport are: {Plane}, {Sprite}, {Tilemap}, and {Window}.
class Viewport

  # Creates the viewport.
  # @overload initialize(x, y, width, height)
  #   Creates the viewport by specifying the bounds manually.
  #   @param x [Fixnum] Offset on the screen along the x-axis.
  #   @param y [Fixnum] Offset on the screen along the y-axis.
  #   @param width [Fixnum] Number of pixels the viewport spans along the x-axis.
  #   @param height [Fixnum] Number of pixels the viewport spans along the y-axis.
  # @overload initialize(rect)
  #   Creates the viewport by using bounds from an existing rectangle.
  #   @param rect [Rect] Bounds for the viewport.
  # @overload initialize()
  #   Creates a viewport that is the same size as the screen.
  def initialize(*args)
    fail NotImplementedError
  end

  # Frees resources held by the viewport.
  # @note If the viewport has already been freed, then this method does nothing.
  # @note Other renderable objects associated with the viewport will not be freed.
  # @return [nil]
  # @see #disposed?
  def dispose
    fail NotImplementedError
  end

  # Indicates whether the viewport's resources have been freed.
  # @return [Boolean] +true+ if the resources have been freed, +false+ if they have not.
  # @see #dispose
  def disposed?
    fail NotImplementedError
  end

  # Starts a flash of color overlaying the viewport.
  # The color (tint) of the viewport is immediately set to +color+.
  # The color is faded out once during the specified duration.
  # @param color [Color] Color to fade to during the flash.
  # @param duration [Fixnum] Number of frames it takes to fade out.
  # @return [nil]
  # @note Be sure to call {#update} each frame to update the state of the flash.
  def flash(color, duration)
    fail NotImplementedError
  end

  # Updates the flash state of the viewport.
  # This method only needs to be called if the viewport is flashing.
  # @return [nil]
  def update
    fail NotImplementedError
  end

  # Bounds of the viewport.
  # Identifies where the viewport is located on the screen and its size.
  # @return [Rect]
  # @note Updating the attributes of this property or setting it to a new {Rect} will update the bounds.
  attr_accessor :rect

  # Flag indicating whether the viewport and its content are visible.
  # @return [Boolean]
  attr_accessor :visible

  # Index of the layer the viewport is on.
  # Larger values are placed on top of lower values.
  # In other words, higher values appear closer to the viewer.
  # @return [Fixnum]
  # @note If multiple objects share the same z-coordinate,
  #  the more recently created object will be displayed on top.
  attr_accessor :z

  # Offset of the viewport's starting point along the x-axis.
  # Alternatively, this is how much the contents of the viewport are shifted in the opposite direction.
  # @return [Fixnum]
  attr_accessor :ox

  # Offset of the viewport's starting point along the y-axis.
  # Alternatively, this is how much the contents of the viewport are shifted in the opposite direction.
  # @return [Fixnum]
  attr_accessor :oy

  # Tint applied to the viewport.
  # The alpha channel is used to determine how much of a tint is applied.
  # @return [Color]
  # @note This value is handled separately from the {#flash} color and is blended with it.
  attr_accessor :color

  # Color adjustment applied to the contents of the viewport.
  # @return [Tone]
  attr_accessor :tone

end
