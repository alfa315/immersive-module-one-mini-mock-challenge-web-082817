class Book
  attr_reader :title
  attr_accessor :author, :word_count

  @@all = []

  def initialize(title, word_count)
    @title = title
    @@all << self
    @word_count = word_count
  end

  def self.all
    @@all
  end

end
