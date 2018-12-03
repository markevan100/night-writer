require_relative 'text'

  text = Text.new(open("#{ARGV[0]}", &:read).chomp)
  text.braille(text.string)
  char_count = text.string.each_char.count

  out_file = File.new("#{ARGV[1]}", "w")
  out_file.write(text.str1 + "\n")
  out_file.write(text.str2 + "\n")
  out_file.write(text.str3 + "\n")

  puts "Created #{ARGV[1]} containing #{char_count} characters"
