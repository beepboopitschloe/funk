module Funk
	class Game
		def initialize
			@window = nil
			@world = nil
		end
		
		def run
			begin
				@window = Ncurses.initscr
				@world = Funk::World.new

				Ncurses.noecho
				Ncurses.start_color
				Ncurses.curs_set 0
				Ncurses.keypad @window, true

				Ncurses.cbreak

				player = Entity.new
				@world.spawn_at player, 10, 10

				draw

				while (ch = @window.getch) != 'q'.ord
					update ch

					draw
				end
			ensure
				Ncurses.endwin
			end
		end

		private

		def update input
			@world.update input
		end

		def draw
			# @window.clear

			@world.draw @window

			@window.refresh
		end
	end
end

