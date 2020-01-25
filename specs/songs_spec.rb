require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../songs.rb')


class TestSongs < Minitest::Test

  def setup
    @song1 = Song.new("Twenty-One-Pilots", "Alternative", "The Hype")
  end

  def test_get_song_artist
      assert_equal("Twenty-One-Pilots", @song1.artist)
  end
  def test_get_song_genre
      assert_equal("Alternative", @song1.genre)
  end
  def test_get_song_name
      assert_equal("The Hype", @song1.name)
  end


end
