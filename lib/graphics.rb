module Graphics
  class << self

    def update
      fail NotImplementedError
    end

    def wait(duration)
      fail NotImplementedError
    end

    def fadeout(duration)
      fail NotImplementedError
    end

    def fadein(duration)
      fail NotImplementedError
    end

    def freeze
      fail NotImplementedError
    end

    def transition(duration = 10, filename = nil, vague = 40)
      fail NotImplementedError
    end

    def snap_to_bitmap
      fail NotImplementedError
    end

    def frame_reset
      fail NotImplementedError
    end

    def width
      fail NotImplementedError
    end

    def height
      fail NotImplementedError
    end

    def resize_screen(width, height)
      fail NotImplementedError
    end

    def play_movie(filename)
      fail NotImplementedError
    end

    attr_accessor :frame_rate

    attr_accessor :frame_count

    attr_accessor :brightness

  end
end
