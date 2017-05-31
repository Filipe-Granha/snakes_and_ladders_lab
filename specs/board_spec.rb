 require "minitest/autorun"
 require "minitest/rg"
 require_relative "../board"

 class TestBoard < MiniTest::Test
   
   def setup
    @board = Board.new(10)
   end


def test_check_board_length
assert_equal(10, @board.check_length)
end

 end