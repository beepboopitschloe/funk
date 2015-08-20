module Funk
	class Cell
		def initialize
			@glyph = '.'
			@color_fg = Ncurses::COLOR_WHITE
			@color_bg = Ncurses::COLOR_BLACK
		end

		def passable?
			true
		end

		def draw x, y, window
			COLORS.set(@color_fg, @color_bg)
			window.mvaddstr x, y, @glyph
			COLORS.default
		end
	end
end
