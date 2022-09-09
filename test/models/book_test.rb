require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "There might be no titles" do 
    book = Book.new
    asser_not book.save, "There is no title for the book"
  end

end
