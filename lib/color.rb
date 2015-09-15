class Color

  def initialize(red = 0, green = 0, blue = 0, alpha = 255)
    fail NotImplementedError
  end

  def set(arg1, green = nil, blue = nil, alpha = 255)
    fail NotImplementedError
  end

  attr_accessor :red

  attr_accessor :green

  attr_accessor :blue

  attr_accessor :alpha

end