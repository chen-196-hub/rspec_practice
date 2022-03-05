require_relative "../app/user.rb"
require_relative "../app/book.rb"

RSpec.describe User do
  let(:user){User.new}
  let(:book){Book.new "Rubyの本"}
  let(:book1){Book.new "本１"}
  let(:book2){Book.new "本２"}
  let(:book3){Book.new "本３"}

  describe "#buy_book" do
    it do
      expect{user.buy book}.to change{user.bought_books.size}.by 1
    end
  end 

  describe "#bollow_book" do
    it do
      expect{user.bollow book}.to change{user.bollowed_books.size}.by 1
    end
  end

  describe "#bought_books" do

    before do
      user.buy book1
      user.buy book2
      user.buy book3
    end
    
    it do
      expect(user.bought_books).to eq([book1,book2,book3])
    end
  end

  describe "#bollowed_books" do
    before do
      user.bollow book1
      user.bollow book2
      user.bollow book3
    end

    it do
      expect(user.bollowed_books).to eq([book1,book2,book3])
    end
  end

  describe "#bought_and_bollowed_books" do
    before do
      user.bollow book1
      user.bollow book2
      user.bollow book3
      user.buy book1
    end
    it do
      expect(user.bought_and_bollowed_books).to eq([book1])
    end
  end
  
  describe "#bollowed_but_not_bought_books" do
    before do
      user.bollow book1
      user.bollow book2
      user.bollow book3
      user.buy book1
    end
    it do
      expect(user.bollowed_but_not_bought_books).to eq([book2,book3])
    end
  end
end