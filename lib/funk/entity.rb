module Funk
	class Entity
		attr_accessor :x, :y, :glyph

		def initialize
			@x = 0
			@y = 0

			@glyph = '@'

			@world = nil
		end

		def set_world world
			@world = world	
		end

		def draw window
			colors = Funk::Colors.instance

			colors.set(Ncurses::COLOR_RED, Ncurses::COLOR_BLUE)
			window.mvaddstr @y, @x, @glyph
			colors.default
		end

		def move dx, dy
			tx = @x + dx
			ty = @y + dy

			target = @world.get_cell tx, ty
			other = @world.get_entities tx, ty, exclude = self

			if not target.passable? or other.length > 0
				# don't move, do something with collision
			else
				@x = tx
				@y = ty
			end
		end

		def update input
			case input
				when Ncurses::KEY_UP
					move 0, -1
				when Ncurses::KEY_DOWN
					move 0, 1
				when Ncurses::KEY_LEFT
					move -1, 0
				when Ncurses::KEY_RIGHT
					move 1, 0
			end
		end
	end
end
