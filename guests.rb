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

  def top_up_funds(amount)
    @funds += amount.to_i
  end


  def cheer(song_to_check)
    if song_to_check == @favorite_song
      p "Woo!!"
      return true
    end
  end
end
