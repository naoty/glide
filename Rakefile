require "rake/clean"
require "tilt/haml"

task :default => [:build]

desc "Build index.html"
task :build => [:load_content_task, "index.html"]

desc "Load build task"
task :load_content_task do
  content_files = Dir["content.*"]
  content_files.delete("content.html")
  abort "Load Error" if content_files.length != 1

  content_file = content_files.first
  extension = File.extname(content_file).delete(".")
  load "./lib/tasks/#{extension}.rake"
end

namespace :build do
  desc "Build index.html"
  task :html => [:load_content_task, "index.html"]
end

file "index.html" => ["layout.haml", "content.html"] do |t|
  content_file = File.open("content.html", "rb")
  content_html = content_file.read.force_encoding("utf-8")

  template = Tilt::HamlTemplate.new("layout.haml")
  html = template.render { content_html }

  html_file = File.open("index.html", "wb")
  html_file.write(html)

  content_file.close
  html_file.close
end

CLEAN.include(["content.html"])
CLOBBER.include(["index.html", "content.html"])
