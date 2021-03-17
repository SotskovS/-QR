current_path = File.dirname(__FILE__)

time = Time.now.strftime("%d.%m %H:%M:%S")

file_path = current_path + "/new_data.txt"
file = File.new(file_path)

new_file = File.new("finish_data #{time}.txt", "w:UTF-8")

content = file.read
code_array = content.split(',')

code_array.each do |code|
  code = code.strip
  new_file.puts(code)
end






