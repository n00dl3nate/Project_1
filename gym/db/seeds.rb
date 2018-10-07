require_relative('../models/members.rb')
require_relative('../models/sessions.rb')
require_relative('../models/timetable.rb')
require_relative('../models/booking.rb')
require("pry")


Member.delete_all
Session.delete_all
Booking.delete_all
Timetable.delete_all


member1 = Member.new(
  "f_name" => "Jack",
  "l_name" => "Jackson",
  "premium" => true,
  "fitness_level" => 3
)

member2 = Member.new(
  "f_name" => "Kris",
  "l_name" => "Kyle",
  "premium" => true,
  "fitness_level" => 1
)

member3 = Member.new(
  "f_name" => "Billy",
  "l_name" => "Brown",
  "premium" => true,
  "fitness_level" => 2
)

member4 = Member.new(
  "f_name" => "Simon",
  "l_name" => "Sugar",
  "premium" => false,
  "fitness_level" => 3
)

member1.save
member2.save
member3.save
member4.save

session1 = Session.new(
  "name" => "Spin",
  "fitness_level" => 1
)

session2 = Session.new(
  "name" => "Crossfit",
  "fitness_level" => 1
)

session3 = Session.new(
  "name" => "Les Mills Body Weigth",
  "fitness_level" => 1
)

session4 = Session.new(
  "name" => "Kickboxing",
  "fitness_level" => 1
)

session1.save
session2.save
session3.save
session4.save

timetable1 = Timetable.new(
  "session_id" => session1.id,
  "class_time" => "13:00",
  "capacity" => 20
)

timetable2 = Timetable.new(
  "session_id" => session2.id,
  "class_time" => "15:00",
  "capacity" => 10
)

timetable3 = Timetable.new(
  "session_id" => session3.id,
  "class_time" => "17:00",
  "capacity" => 15
)

timetable4 = Timetable.new(
  "session_id" => session4.id,
  "class_time" => "20:00",
  "capacity" => 30
)

timetable1.save
timetable2.save
timetable3.save
timetable4.save

booking1 = Booking.new(
  "member_id" => member1.id,
  "timetable_id" => timetable1.id
)

booking2 = Booking.new(
  "member_id" => member2.id,
  "timetable_id" => timetable2.id
)

booking3 = Booking.new(
  "member_id" => member3.id,
  "timetable_id" => timetable3.id
)

booking4 = Booking.new(
  "member_id" => member4.id,
  "timetable_id" => timetable4.id
)

booking5 = Booking.new(
  "member_id" => member2.id,
  "timetable_id" => timetable4.id
)

booking6 = Booking.new(
  "member_id" => member1.id,
  "timetable_id" => timetable3.id
)

booking1.save
booking2.save
booking3.save
booking4.save
booking5.save
booking6.save


binding.pry
nil
