class User
  # 本棚
  attr_reader :bought_books, :bollowed_books

  # def bought_books
  #   @bought_books
  # end

  # def bollowed
  #   @bollowed_books
  # end

  def initialize
    @bought_books = []
    @bollowed_books = []
  end

  # 本を買う
  def buy book
    @bought_books.push book
  end

  # 本を借りる
  def bollow book
    @bollowed_books.push book
  end

  # 借りていて、買ってもいる本
  def bought_and_bollowed_books
    @bought_books & @bollowed_books
  end
  # 借りているが買っていない本
  def bollowed_but_not_bought_books
    @bollowed_books - @bought_books
  end
end