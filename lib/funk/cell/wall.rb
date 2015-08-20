module Funk
	class Wall < Cell
		def initialize
			super

			@glyph = 'X'
			@color_fg = Ncurses::COLOR_WHITE
		end

		def passable?
			false
		end
	end
end
