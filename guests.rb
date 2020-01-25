class Guests
attr_reader :name, :favorite_song, :total_guests

  def initialize(name, funds, favorite_song, amount)
    @name = name
    @funds = funds
    @favorite_song = favorite_song
    @total_guests = amount
  end

  def get_guest_funds()
    return @funds
  end

end
