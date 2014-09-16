#!/usr/bin/env rake

require 'rainbow/ext/string'

namespace :test do
  desc 'Check for whitespace'
  task :whitespace do
    puts 'Checking cities.json for invalid whitespace'.color(:blue)
    json_file = File.read('cities.json')
    json_file.each_line do |line|
      if line =~ /"\s+\d+|"\s+-|\d+\s+"/
        puts 'Syntax Error!'.color(:red)
        abort line.color(:yellow)
      end
    end
    puts 'Whitespace OK'.color(:green)
  end
end
