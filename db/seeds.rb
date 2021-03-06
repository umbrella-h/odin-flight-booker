# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	airports = Airport.create([{ code: 'SFO' }, { code: 'NYC' }])
	flights = Flight.create([{ dep_time: (DateTime.civil_from_format :local, 2020, 12, 1), duration: 6 },
	 {dep_time: (DateTime.civil_from_format :local, 2020, 12, 2), duration: 8 }])

#DateTime.civil_from_format :local, 2020, 12, 1

