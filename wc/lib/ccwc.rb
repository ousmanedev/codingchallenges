class Ccwc
  attr_reader :line_count, :word_count, :byte_count, :character_count

  alias :l :line_count
  alias :w :word_count
  alias :c :byte_count
  alias :m :character_count

  def initialize(file)
    @file = file
    @line_count = 0
    @word_count = 0
    @byte_count = 0
    @character_count = 0

    build_stats
  end

  def build_stats
    @file.readlines.each do |line|
      @line_count += 1
      @byte_count += line.bytesize
      @word_count += line.split.size
      @character_count += line.length
    end
  end

  def summary
    [line_count, word_count, byte_count]
  end
end
