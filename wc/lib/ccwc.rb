class Ccwc
  def initialize(filename)
    @file = File.new(filename, "r")
  end

  def byte_count
    @file.size
  end

  def word_count
    @file.read.split.size
  end

  def line_count
    @file.readlines.size
  end

  def character_count
    @file.read.length
  end
end
