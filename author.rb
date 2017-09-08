class Author
  attr_reader :name, :books


  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @books = []
  end

  def self.all
    @@all
  end

  def add_book(book)
    @books << book
    book.author = self
  end

  def write_book(title, word_count)
    new_book = Book.new(title, word_count)
    self.add_book(new_book)
  end

  def total_words
    total = 0
    self.books.each do |book_ob|
      total = total + book_ob.word_count
    end
    total
  end

  def self.most_words
    highest_count = []
    self.all.each do |author_ob|
      highest_count << author_ob.total_words
    end
    self.all.find do |author_ob|
      author_ob.total_words == highest_count.max
    end
  end

end
