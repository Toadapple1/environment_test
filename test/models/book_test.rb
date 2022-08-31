require "test_helper"

class BookTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
   test "no title" do 
     book = Book.new 
     assert_not book.save, "There is no Title"
   end
   test "errors?" do 
     assert_raises(NameError) do
       some_undefined_variable
     end
    end
end
