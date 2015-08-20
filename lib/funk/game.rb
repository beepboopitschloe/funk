module Funk
	class Game
		def initialize
			@window = nil

			@px = 10
			@py = 10
		end
		
		def run
			begin
				@window = Ncurses.initscr
				
				Ncurses.noecho()
				Ncurses.curs_set(0)
				Ncurses.keypad(@window, true)

				Ncurses.cbreak

				draw

				while (ch = @window.getch) != 'q'.ord
					update ch
				end
			ensure
				Ncurses.endwin
			end
		end

		private

		def update input
			case input
				when Ncurses::KEY_DOWN
					@py += 1
				when Ncurses::KEY_UP
					@py -= 1
				when Ncurses::KEY_RIGHT
					@px += 1
				when Ncurses::KEY_LEFT
					@px -= 1
			end

			draw
		end

		def draw
			@window.clear

			@window.mvaddstr @py, @px, '@'

			@window.refresh
		end
	end
end

