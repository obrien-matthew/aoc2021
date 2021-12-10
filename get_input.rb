#!/usr/bin/env ruby
require "net/http"

day = ARGV[0]
year = 2021
cookie = "session=%s" % ENV["AOC2021_SESSION_COOKIE"]

resp = Net::HTTP.get(URI("https://adventofcode.com/#{year}/day/#{day}/input"), { "Cookie" => cookie })
outfile = File.open("#{year}.%02d.input.txt" % day, "w+")
outfile << resp
outfile.close
