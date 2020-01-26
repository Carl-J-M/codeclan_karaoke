require_relative('rooms.rb')
require_relative('songs.rb')
require_relative('guests.rb')

@song1 = Song.new("Twenty-One-Pilots", "Alternative", "The Hype")



def run()

  @green_room = Room.new("Green Room", 1, 10, 150)
  @red_room = Room.new("Red Room", 2, 20, 250)
  @yellow_room = Room.new("Yellow Room", 3, 30, 350)
  room_array = [@green_room, @red_room, @yellow_room]

p "Welcome to CodeClan Karaoke booking system."
p "Please enter your group name:"
group_name = gets.chomp
while (group_name.match? /\A[a-zA-Z'-]*\z/) != true
  p "Incorrect value. Please try again:"
  group_name = gets.chomp
end
p "Please enter your total budget:"
group_funds = gets.chomp.to_i

p "Please enter your total number of persons."
group_people = gets.chomp.to_i
p "Enter your favorite song!"
group_fav_song = gets.chomp

while (group_fav_song.match? /\A[a-zA-Z'-]*\z/) != true
  p "Incorrect value. Please try again:"
  group_fav_song = gets.chomp
end

@new_group = Guests.new(group_name, group_funds, group_fav_song, group_people)

p "The following rooms are avaliable:"
for room in room_array
  if room.price.to_i <= @new_group.get_guest_funds.to_i && @new_group.total_guests <= room.capacity
    p "#{room.number}: #{room.name} - £#{room.price}"
  end
end
p "Please enter room number to select."
room_choice = gets.chomp.to_i

  if room_choice == 1
    @green_room.check_in(@new_group)
    p "Checked into #{@green_room.name}"
    @green_room.charge_guest(@new_group)
  end
  if room_choice.to_i == 2
    @red_room.check_in(@new_group)
      p "Checked into #{@red_room.name}"
    @red_room.charge_guest(@new_group)
  end
  if room_choice.to_i == 3
    @yellow_room.check_in(@new_group)
      p "Checked into #{@yellow_room.name}"
    @yellow_room.charge_guest(@new_group)
  end
  p "Booking complete. Booked under #{@new_group.name}. Account Credit £#{@new_group.get_guest_funds}."
  p "End of program."
end


run()
