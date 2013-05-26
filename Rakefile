require "rake/clean"
require "tilt/haml"
require "redcarpet"

task :default => ["index.html"]

file "index.html" => ["layout.haml", "content.html"] do |t|
end

file "content.html" => ["content.md"] do |t|
end

CLEAN.include(["content.html"])
CLOBBER.include(["index.html", "content.html"])
