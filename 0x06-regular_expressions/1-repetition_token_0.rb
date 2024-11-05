#!/usr/bin/env ruby
# This script checks if the given string matches the specific regex pattern
# Matches only strings with "hbttn", "hbtttn", "hbttttn", and "hbtttttn"

# Regular expression pattern to match only 2 to 4 occurrences of 't'
pattern = /^hbtt{2,4}n$/

# Accepts one argument from the command line
input = ARGV[0]

# Perform the match and print the input if it matches the pattern
if input.match?(pattern)
  puts input
end
