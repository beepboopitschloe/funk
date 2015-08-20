require "singleton"
require "logger"
require "ncurses"

require "funk/game"
require "funk/entity"
require "funk/colors"
require "funk/cell"
require "funk/world"
require "funk/version"

module Funk
	LOGGER = Logger.new "game.log"
end

