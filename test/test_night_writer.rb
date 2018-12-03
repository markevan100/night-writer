require_relative 'test_helper'

class WriterTest < Minitest::Test

  def setup
    @new_text = Text.new("h")
  end

  def test_sting
    assert_equal "h", @new_text.string
  end

  def test_to_braille_array_for_string
    assert_equal ["0.","00",".."], @new_text.to_braille("h")
  end

  def test_to_braille_array_for_string_of_an_instance
    assert_equal ["0.","00",".."], @new_text.to_braille(@new_text.string)
  end

  def test_to_output_with_hardcoded_array
    @new_text.to_output(["0.","00",".."])
    assert_equal @new_text.str1, "0."
  end

  def test_to_output_with_instance
    array = @new_text.to_braille(@new_text.string)
    @new_text.to_output(array)
    assert_equal @new_text.str1, "0."
  end

  def test_braille_enumerate_over_two_characters
    this_text = Text.new("hh")
    this_text.braille("hh")
    assert_equal this_text.str1, "0.0."
  end

  def test_braille_more_characters_from_the_object
    this_text = Text.new("how you")
    this_text.braille(this_text.string)
    assert_equal this_text.str1, "0.0..0..000.0."
  end
end
