module Funk
	class Wall < Cell
		def initialize
			super

			@glyph = 'X'
		end

		def passable?
			false
		end
	end
end
