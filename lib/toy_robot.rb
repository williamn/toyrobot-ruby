require "toy_robot/version"
require 'toy_robot/robot'
require 'toy_robot/table'
require 'toy_robot/simulator'
require 'toy_robot/command'
require 'toy_robot/cli'

module ToyRobot
  attr_reader :simulator
  class Error < StandardError; end
  # Your code goes here...
end
