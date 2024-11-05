#!/usr/bin/env ruby

# Accept the argument from the command line
input = ARGV[0]

# Use a regular expression to find matches for "School"
matches = input.scan(/School/)

# Print the matched results joined together
puts matches.join
