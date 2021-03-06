require 'pry'
class Text

  attr_accessor :string, :str1, :str2, :str3
  def initialize(string)
    @string = string
    @str1 = ""
    @str2 = ""
    @str3 = ""
  end

  @@alphabet = {
    "a" => ["0.","..",".."], "b" => ["0.","0.",".."], "c" => ["00","..",".."], "d" => ["00",".0",".."],
    "e" => ["0.",".0",".."], "f" => ["00","0.",".."], "g" => ["00","00",".."], "h" => ["0.","00",".."],
    "i" => [".0","0.",".."], "j" => [".0","00",".."], "k" => ["0.","..","0."], "l" => ["0.","0.","0."],
    "m" => ["00","..","0."], "n" => ["00",".0","0."], "o" => ["0.",".0","0."], "p" => ["00","0.","0."],
    "q" => ["00","00","0."], "r" => ["0.","00","0."], "s" => [".0","0.","0."], "t" => [".0","00","0."],
    "u" => ["0.","..","00"], "v" => ["0.","0.","00"], "w" => [".0","00",".0"], "x" => ["00","..","00"],
    "y" => ["00",".0","00"], "z" => ["0.",".0","00"], "!" => ["..","00","0."], "'" => ["..","..","0."],
    "," => ["..","0.",".."], "-" => ["..","..","00"], "." => ["..","00",".0"], "?" => ["..","0.","00"],
    "capitals" => ["..", "..", ".0"], "numbers" => [".0", ".0", "00"], " " => ["..","..",".."]
}

  def to_output(array)
    @str1 << array[0]
    @str2 << array[1]
    @str3 << array[2]
  end

  def braille(arg)
    arg.each_char do |s|
      to_output(@@alphabet[s])
    end
  end
end
