require_relative('songs.rb')

class Room
attr_reader :number, :capacity, :price

  def initialize(room_number, capacity, price)

    @number = room_number
    @capacity = capacity
    @price = price

    @songs_list = []
    @till = 0
    @guests = []


  end

  def get_current_guests()
    return @guests
  end

  def check_in(group_to_check_in)
    if @capacity >= group_to_check_in.total_guests && @guests.count == 0
    @guests.push(group_to_check_in)
    end
  end

  def charge_guest(guest_to_charge)
    guest_to_charge.top_up_funds(-@price)
    @till += @price
  end

  def get_till_contents()
    return @till
  end
  def get_songs()
    return @songs_list
  end
  def add_song(song_to_add)
    @songs_list.push(song_to_add)
  end

end
