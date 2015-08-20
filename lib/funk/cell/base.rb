module Funk
	class Cell
		attr_accessor :terrain

		def initialize
			@glyph = '.'
		end

		def passable?
			true
		end

		def draw x, y, window
			window.mvaddstr x, y, @glyph
		end
	end
end
