class Ccwc
  def initialize(file)
    @lines = file.readlines
  end

  def line_count
    @lines.size
  end

  def byte_count
    @lines.inject(0) { |sum, line| sum + line.bytesize }
  end

  def word_count
    @lines.inject(0) { |sum, line| sum + line.split.size }
  end

  def character_count
    @lines.inject(0) { |sum, line| sum + line.length }
  end

  def summary
    [line_count, word_count, byte_count]
  end

  alias :l :line_count
  alias :w :word_count
  alias :c :byte_count
  alias :m :character_count
end
