module Funk
	class Cell
		attr_accessor :terrain, :contents

		def initialize
			@terrain = 'grass'

			@contents = Array.new
		end

		def draw window
			# use terrain as bg color, first content item as glyph

		end
	end
end
