require "minitest/autorun"
require "ccwc"

class CcwcTest < Minitest::Test
  FIXTURE_FILE = File.join(File.dirname(__FILE__), 'fixtures', 'test.txt')

  def test_line_count
    assert_equal 7145, subject.line_count
  end

  def test_word_count
    assert_equal 58164, subject.word_count
  end

  def test_byte_count
    assert_equal 342190, subject.byte_count
  end

  def test_character_count
    assert_equal 339292, subject.character_count
  end

  def subject
    Ccwc.new(FIXTURE_FILE)
  end
end
