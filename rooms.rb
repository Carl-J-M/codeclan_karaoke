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

end
