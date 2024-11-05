#!/usr/bin/env ruby
# This script extracts capital letters from a given string

# Regular expression pattern to match capital letters
pattern = /[A-Z]+/

# Initialize an empty string to store the result
result = ""

# Loop through the argument passed to the script
ARGV.each do |input|
  result << input.scan(pattern).join # Collect and join all matches
end

# Print the result, or an empty line if there are no matches
puts result.empty? ? "" : result

