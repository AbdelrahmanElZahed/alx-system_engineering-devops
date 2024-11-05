#!/usr/bin/env ruby
# This script checks if the given string matches the regex pattern

# Regular expression pattern
pattern = /^hbtt{2,5}n$/

# Accepts one argument
input = ARGV[0]

# Perform the match
if input.match?(pattern)
  puts input
end

