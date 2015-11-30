# Multidimensional array class.
# Each element consists of a signed two byte integer ranging from 32,768 to 32,767.
# This class is implemented at a low-level to make it faster than Ruby's Array at handling large amounts of data.
class Table

  # Creates the table.
  # @overload initialize(xsize)
  #   Creates a 1-dimensional table (x values only).
  #   @param xsize [Fixnum] Size of the table.
  # @overload initialize(xsize, ysize)
  #   Creates a 2-dimensional table (x and y values only).
  #   @param xsize [Fixnum] Size of the table in the x-dimension.
  #   @param ysize [Fixnum] Size of the table in the y-dimension.
  # @overload initialize(xsize, ysize, zsize)
  #   Creates a 3-dimensional table (x, y, and z values).
  #   @param xsize [Fixnum] Size of the table in the x-dimension.
  #   @param ysize [Fixnum] Size of the table in the y-dimension.
  #   @param zsize [Fixnum] Size of the table in the z-dimension.
  def initialize(xsize, ysize = 1, zsize = 1)
    fail NotImplementedError
  end

  # Adjusts the size of the table.
  # Existing values are retained,
  # that is, the value of +table[x, y, z]+ will be preserved unless shrinking causes it to be removed.
  # All new entries in the table will be set to 0.
  # @overload resize(xsize)
  #   Adjusts the size of the table.
  #   The table will be converted to 1-dimension if it isn't already.
  #   @param xsize [Fixnum] New size of the table.
  #   @return [self]
  # @overload resize(xsize, ysize)
  #   Adjusts the dimensions of the table.
  #   The table will be converted to 2-dimensions if it isn't already.
  #   @param xsize [Fixnum] New size of the table in the x-dimension.
  #   @param ysize [Fixnum] New size of the table in the y-dimension.
  #   @return [self]
  # @overload resize(xsize, ysize, zsize)
  #   Adjusts the dimensions of the table.
  #   The table will be converted to 3-dimensions if it isn't already.
  #   @param xsize [Fixnum] New size of the table in the x-dimension.
  #   @param ysize [Fixnum] New size of the table in the y-dimension.
  #   @param zsize [Fixnum] New size of the table in the z-dimension.
  #   @return [self]
  def resize(xsize, ysize = nil, zsize = nil)
    fail NotImplementedError
  end

  # Size of the table in the x-dimension.
  # @return [Fixnum]
  def xsize
    fail NotImplementedError
  end

  # Size of the table in the y-dimension.
  # @return [Fixnum]
  # @note For 1-dimensional tables, this value will be 1.
  def ysize
    fail NotImplementedError
  end

  # Size of the table in the z-dimension.
  # @return [Fixnum]
  # @note For 1- and 2-dimensional tables, this value will be 1.
  def zsize
    fail NotImplementedError
  end

  # Retrieves the value of a cell in the table.
  # @overload self(x)
  #   Retrieves a value from the table.
  #   @param x [Fixnum] Index of the value to retrieve.
  #   @return [Fixnum] Value at the given location.
  # @overload self(x, y)
  #   Retrieves a value from the table.
  #   @param x [Fixnum] Index in the x-dimension of the value to retrieve.
  #   @param y [Fixnum] Index in the y-dimension of the value to retrieve.
  #   @return [Fixnum] Value at the given location.
  # @overload self(x, y, z)
  #   Retrieves a value from the table.
  #   @param x [Fixnum] Index in the x-dimension of the value to retrieve.
  #   @param y [Fixnum] Index in the y-dimension of the value to retrieve.
  #   @param z [Fixnum] Index in the z-dimension of the value to retrieve.
  #   @return [Fixnum] Value at the given location.
  # @note Indices outside the bounds of the array will return +nil+.
  def [](x, y = 0, z = 0)
    fail NotImplementedError
  end

  # Updates the value of a cell in the table.
  # @overload self=(x, value)
  #   Updates a value in the table.
  #   @param x [Fixnum] Index of the cell to update.
  #   @param value [Fixnum] New value for the cell at +x+.
  # @overload self=(x, y, value)
  #   Updates a value in the table.
  #   @param x [Fixnum] Index in the x-dimension of the cell to update.
  #   @param y [Fixnum] Index in the y-dimension of the cell to update.
  #   @param value [Fixnum] New value for the cell at (+x+, +y+).
  # @overload self=(x, y, z, value)
  #   Updates a value in the table.
  #   @param x [Fixnum] Index in the x-dimension of the cell to update.
  #   @param y [Fixnum] Index in the y-dimension of the cell to update.
  #   @param z [Fixnum] Index in the z-dimension of the cell to update.
  #   @param value [Fixnum] New value for the cell at (+x+, +y+, +z+).
  # @note Indices outside the bounds of the array will not raise an error or change existing cells.
  def []=(x, y = 0, z = 0, value = nil)
    fail NotImplementedError
  end

end
