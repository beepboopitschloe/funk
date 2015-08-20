require "singleton"
require "logger"
require "ncurses"

require "funk/game"
require "funk/entity"
require "funk/colors"
require "funk/world"
require "funk/version"

require "funk/cell/cell"

module Funk
	LOGGER = Logger.new "game.log"
	COLORS = Colors.instance
end

