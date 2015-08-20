module Funk
	class Cell
		attr_accessor :terrain, :contents

		def initialize
			@terrain = :grass
		end

		def draw x, y, window
			glyph = '.'

			case @terrain
				when :grass
					glyph = ','
			end

			window.mvaddstr x, y, glyph
		end
	end
end
