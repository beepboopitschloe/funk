module Funk
	class Grass < Cell
		def initialize
			super

			@glyph = ','
			@color_fg = Ncurses::COLOR_GREEN
		end
	end
end
