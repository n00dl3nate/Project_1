require_relative( '../db/sql_runner' )

class Booking

  attr_reader :member_id ,:timetable_id , :id

  def initialize(options)
    @id = options['id'].to_i
    @member_id = options['member_id'].to_i
    @timetable_id = options['timetable_id'].to_i
  end

  def save

    sql = "INSERT INTO bookings(
    member_id,
    timetable_id
    )
    VALUES($1,$2)
    RETURNING ID;"

    values = [@member_id,@timetable_id]

    id = SqlRunner.run(sql,values)
    @id = id.first['id'].to_i

  end

  def self.delete_all

    sql = "DELETE FROM bookings;"

    SqlRunner.run(sql)

  end

  def self.all

    sql = "SELECT * FROM bookings"

    all = SqlRunner.run(sql)

    return all.map do |booking|
      Booking.new(booking)
    end
  end

end
