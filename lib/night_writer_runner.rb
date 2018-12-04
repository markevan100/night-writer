require_relative 'text'

  text = Text.new(open("#{ARGV[0]}", &:read).chomp)
  text.braille(text.string)
  char_count = text.string.length

  out_file = File.new("#{ARGV[1]}", "w")

  until text.str1.length == 0
    out_file.write(text.str1.slice!(0..79) + "\n")
    out_file.write(text.str2.slice!(0..79) + "\n")
    out_file.write(text.str3.slice!(0..79) + "\n")
  end

puts "Created #{ARGV[1]} containing #{char_count} characters."
