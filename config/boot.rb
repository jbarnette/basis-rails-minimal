$:.unshift File.expand_path("../../lib", __FILE__)

require "./config/env.rb" if File.file? "config/env.rb"
require "isolate/now"
