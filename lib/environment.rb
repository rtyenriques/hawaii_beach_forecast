# frozen_string_literal: true
require 'pry'
require 'httparty'
require 'colorize'


require_relative "hawaii_beach_forecast/version"
require_relative './hawaii_beach_forecast/cli.rb'
require_relative './hawaii_beach_forecast/beach.rb'
require_relative './hawaii_beach_forecast/api.rb'





module HawaiiBeachForecast
  class Error < StandardError; end
  # Your code goes here...
end
