#!/usr/bin/env ruby
# This script checks a string against a regex pattern

# Regular expression pattern
pattern = /^h.n$/

# Loop through the argument passed to the script
ARGV.each do |input|
  puts input if input.match?(pattern)
end

