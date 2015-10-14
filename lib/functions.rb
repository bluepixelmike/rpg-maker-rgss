# Evaluates the provided block one time only.
# Detects a reset within the block caused by a user pressing the F12 key
# and re-runs the block in the event of a reset.
# @yield Block to execute when the game starts.
# @return [nil]
# This method is usually placed after all of the other scripts.
# It is essentially the entry-point to the game.
# @example Typical usage
#   rgss_main { SceneManager.run }
def rgss_main(&block)
  fail NotImplementedError
end

# Stops execution and causes the game window to repeatedly redraw.
# Any pending graphics effects (such as transitions) will finish.
# @return [void]
# @note This does not return and will not cause #rgss_main to return either.
#   The only way to abort out of this method is to reset the game (F12).
# @example Freezing the game on completion
#   if game_over?
#     rgss_stop
#   end
def rgss_stop
  loop { Graphics.update }
end

# Loads data from a file and constructs an object from the data.
# This method is functionally equivalent to using +Marshal.load+ on a file's contents.
# However, this method also supports loading files from within encrypted archives.
# @param filename [String] Path of the file to load from.
# @return [Object]
# @example Loading game data
#   save_file = load_data('saved_game.rvdata2')
#   puts "Name: #{save_file.name}"
# @see #save_data
def load_data(filename)
  File.open(filename, 'rb') do |f|
    Marshal.load(f)
  end
end

# Saves an object to a file.
# The data stored in the file can be loaded again by using {#load_data}.
# @param obj [Object] Object to save.
# @param filename [String] Path of the file to save to.
# @return [nil]
# @example Saving game data
#   save_file = SaveFile.new(name)
#   save_data(save_file, 'saved_game.rvdata2')
# @see #load_data
def save_data(obj, filename)
  File.open(filename, 'wb') do |f |
    Marshal.dump(obj, f)
  end
end

# Displays a message box with the values of the arguments passed into this method.
# The arguments will be concatenated together without a separator.
# Any arguments that are not a string will have +#to_s+ called on them.
# @param arg First argument to display.
# @param args Additional arguments to display.
# @return [nil]
# @example Displaying a pop-up
#   msgbox("You got #{gold} gold!")
#   # Displays a message box containing "You got ___ gold!"
# @example Non-string values
#   msgbox("Number of items: ", items.count)
#   # Displays a message box containing "Number of items: ###"
# @see #msgbox_p
def msgbox(arg = nil, *args)
  fail NotImplementedError
end

# Displays objects in a human-readable format in a message box.
# The message box is identical to the one presented by #{msgbox}.
# The difference is that this method calls +#inspect+ on all of the arguments
# and concatenates them together with new-lines.
# @param obj First object to display.
# @param objs Additional objects to display.
# @return [nil]
# @example Quick debug output
#   save_file = load_data('saved_game.rvdata2')
#   msgbox_p(save_file)
#   # Displays a message box detailing the contents of the save file.
# @example Multiple objects
#   msgbox_p("Party members:", party[0], party[1], party[2])
#   # Displays a message box listing party members.
# @see #msgbox
def msgbox_p(obj, *objs)
  msgbox obj.inspect, "\n", *(objs.flat_map { |obj| [obj, "\n"] }[0...-1])
end
