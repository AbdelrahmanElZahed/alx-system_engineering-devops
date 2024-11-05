#!/usr/bin/env ruby
# This script checks a string against a regex pattern for a 10-digit phone number

# Regular expression pattern for a 10-digit phone number
pattern = /^\d{10}$/

# Loop through the argument passed to the script
ARGV.each do |input|
  puts input if input.match?(pattern)
end

