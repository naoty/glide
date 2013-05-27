require "rake/clean"
require "tilt/haml"
require "redcarpet"
require "./lib/sectioned_html"

task :default => ["index.html"]

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

file "content.html" => ["content.md"] do |t|
  renderer = Redcarpet::Render::SectionedHTML.new(prettify: true)
  options = {
    autolink: true,
    fenced_code_blocks: true,
    disable_indented_code_blocks: true
  }
  markdown = Redcarpet::Markdown.new(renderer, options)

  md_file = File.open("content.md", "rb")
  md_content = md_file.read
  html_content = markdown.render(md_content)

  html_file = File.open("content.html", "wb")
  html_file.write(html_content)

  md_file.close
  html_file.close
end

CLEAN.include(["content.html"])
CLOBBER.include(["index.html", "content.html"])
