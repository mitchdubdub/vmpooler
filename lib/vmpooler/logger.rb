require 'rubygems' unless defined?(Gem)

module Vmpooler
  class Logger
    def initialize(
      f = '/var/log/vmpooler.log'
    )
      @file = f
    end

    def log level, string
      time = Time.new
      stamp = time.strftime('%Y-%m-%d %H:%M:%S')

      open(@file, 'a') do |f|
        f.puts "[#{stamp}] #{string}"
      end
    end
  end
end
