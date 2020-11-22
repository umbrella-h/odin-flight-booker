# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	airports = Airport.create([{ code: 'SFO' }, { code: 'NYC' }])
	flights = Flight.create([{dep_airport_id: airports.first.id, arr_airport_id:  airports.last.id, dep_time: "2020-12-01 08:00:00", duration: 6}, {dep_airport_id: airports.last.id, arr_airport_id: airports.first.id, dep_time: "2020-12-02 13:00:00", duration: 8}])

#DateTime.civil_from_format :local, 2020, 12, 1

