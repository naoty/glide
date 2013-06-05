file "content.html" => ["content.haml"] do |t|
  template = Tilt::HamlTemplate.new("content.haml")
  html = template.render
  File.open("content.html", "wb") do |file|
    file.write(html)
  end
end
