module Funk
	class Cell
		attr_accessor :terrain, :contents

		def initialize
			@terrain = 'grass'
		end

		def draw window
			# @TODO draw terrain as bg color
		end
	end
end
