ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  # MySQL
  #ActiveRecord::Base.connection.execute("TRUNCATE #{table}") unless table == "schema_migrations"

  # SQLite
   ActiveRecord::Base.connection.execute("DELETE FROM #{table}") unless table == "schema_migrations"
end


	airports = Airport.create!([{ code: 'SFO' }, { code: 'NYC' }])
	flights = Flight.create!([
	{dep_airport_id: airports.first.id, arr_airport_id: airports.last.id, dep_time: "2020-12-01 08:00:00", duration: 6, capacity: 100, avail: 19}, 
	{dep_airport_id: airports.first.id, arr_airport_id: airports.last.id, dep_time: "2020-12-02 09:00:00", duration: 6, capacity: 100, avail: 18}, 
	{dep_airport_id: airports.first.id, arr_airport_id: airports.last.id, dep_time: "2020-12-01 19:40:00", duration: 7, capacity: 110, avail: 15}, 
	{dep_airport_id: airports.last.id, arr_airport_id: airports.first.id, dep_time: "2020-12-02 10:00:00", duration: 8, capacity: 120, avail: 39}, 
	{dep_airport_id: airports.last.id, arr_airport_id: airports.first.id, dep_time: "2020-12-01 13:00:00", duration: 8, capacity: 125, avail: 40}, 
	{dep_airport_id: airports.last.id, arr_airport_id: airports.first.id, dep_time: "2020-12-02 13:00:00", duration: 9, capacity: 150, avail: 25},
	
	{dep_airport_id: airports.first.id, arr_airport_id: airports.last.id, dep_time: "2020-12-02 08:10:00", duration: 7, capacity: 100, avail: 88}, 
	{dep_airport_id: airports.first.id, arr_airport_id: airports.last.id, dep_time: "2020-12-01 09:20:00", duration: 7, capacity: 100, avail: 97}, 
	{dep_airport_id: airports.first.id, arr_airport_id: airports.last.id, dep_time: "2020-12-02 19:45:00", duration: 9, capacity: 110, avail: 108}, 
	{dep_airport_id: airports.last.id, arr_airport_id: airports.first.id, dep_time: "2020-12-01 10:05:00", duration: 10, capacity: 120, avail: 112}, 
	{dep_airport_id: airports.last.id, arr_airport_id: airports.first.id, dep_time: "2020-12-02 13:20:00", duration: 10, capacity: 125, avail: 87}, 
	{dep_airport_id: airports.last.id, arr_airport_id: airports.first.id, dep_time: "2020-12-01 13:50:00", duration: 9, capacity: 150, avail: 144}	
	])


#DateTime.civil_from_format :local, 2020, 12, 1

