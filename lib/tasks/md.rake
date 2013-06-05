require "redcarpet"
require "./lib/sectioned_html"

file "content.html" => ["content.md"] do |t|
  renderer = Redcarpet::Render::SectionedHTML.new
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

