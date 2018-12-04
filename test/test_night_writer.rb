require_relative 'test_helper'

class WriterTest < Minitest::Test

  def setup
    @new_text = Text.new("h")
  end

  def test_sting
    assert_equal "h", @new_text.string
  end

  def test_to_braille_array_for_string
    @new_text.braille("h")
    assert_equal "0.", @new_text.str1
  end

  def test_to_braille_array_for_string_of_an_instance
    @new_text.braille(@new_text.string)
    assert_equal "0.", @new_text.str1
  end

  def test_to_output_with_hardcoded_array
    @new_text.to_output(["0.","00",".."])
    assert_equal @new_text.str1, "0."
  end
end
