require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guests.rb')
require_relative('../songs.rb')


class TestGuest < Minitest::Test

  def setup
    @group1 = Guests.new("Smith", 300, "All-Star", 9)
  end

  def test_get_booking_name
    assert_equal("Smith", @group1.name)
  end
  def test_get_group_funds
    assert_equal(300, @group1.get_guest_funds)
  end
  def test_get_group_favorite_song
    assert_equal("All-Star", @group1.favorite_song)
  end
  def test_get_group_total
    assert_equal(9, @group1.total_guests)
  end
  def test_top_up_funds
    @group1.top_up_funds(50)
    assert_equal(350, @group1.get_guest_funds)
  end

end
