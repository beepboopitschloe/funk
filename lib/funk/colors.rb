module Funk
	class Colors
		include Singleton

		def initialize
			@pairs = {}
		end

		def pair bg, fg
			key = "#{bg}#{fg}"
			pair = @pairs[key]
			idx = 0

			if pair == nil
				pair = {
					:idx => @pairs.size,
					:pair => Ncurses.init_pair(@pairs.size, bg, fg)
				}

				@pairs[key] = pair
			end

			pair
		end

		def set fg, bg
			p = pair fg, bg
			
			Ncurses.attrset(Ncurses.COLOR_PAIR(p[:idx]))
		end

		def default
			set Ncurses::COLOR_BLACK, Ncurses::COLOR_WHITE
		end
	end
end

