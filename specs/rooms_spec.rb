require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../rooms.rb')
require_relative('../songs.rb')
require_relative('../guests.rb')


class TestRooms < Minitest::Test

  def setup
    @song1 = Song.new("Twenty-One-Pilots", "Alternative", "The Hype")
    @group1 = Guests.new("Smith", 300, "All-Star", 9)
    @green_room = Room.new(1, 10, 150) #Room number. Capacity. Price.
  end

  def test_room_number
    assert_equal(1, @green_room.number)
  end

  def test_get_room_capacity
    assert_equal(10, @green_room.capacity)
  end

  def test_get_room_price
    assert_equal(150, @green_room.price)
  end

end
