#!/usr/bin/env ruby
# This script extracts the sender, receiver, and flags from log entries in a text file

# Regular expression pattern to extract sender, receiver, and flags
pattern = /from:([^]]+).*to:([^]]+).*flags:([^]]+)/

# Check if a filename was provided
if ARGV.empty?
  puts "Usage: ./100-textme.rb <log_file>"
  exit
end

# Read the log file
log_file = ARGV[0]

# Ensure the file exists
unless File.exist?(log_file)
  puts "File not found: #{log_file}"
  exit
end

# Process each line in the log file
File.foreach(log_file) do |log_entry|
  if log_entry.match?(pattern)
    sender = log_entry.match(pattern)[1]
    receiver = log_entry.match(pattern)[2]
    flags = log_entry.match(pattern)[3]
    puts "#{sender},#{receiver},#{flags}"
  end
end

