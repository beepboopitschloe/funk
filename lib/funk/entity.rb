module Funk
	class Entity
		attr_accessor :x, :y, :glyph

		def initialize
			@x = 0
			@y = 0

			@glyph = '@'
		end

		def draw window
			colors = Funk::Colors.instance

			colors.set(Ncurses::COLOR_RED, Ncurses::COLOR_BLUE)
			window.mvaddstr @y, @x, @glyph
			colors.default
		end

		def update input

		end
	end
end
