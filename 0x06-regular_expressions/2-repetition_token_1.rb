#!/usr/bin/env ruby
# This script checks multiple strings against a regex pattern

# Regular expression pattern
pattern = /^hb?tn$/

# Loop through each argument passed to the script
ARGV.each do |input|
  puts input if input.match?(pattern)
end