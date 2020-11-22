ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  # MySQL
  #ActiveRecord::Base.connection.execute("TRUNCATE #{table}") unless table == "schema_migrations"

  # SQLite
   ActiveRecord::Base.connection.execute("DELETE FROM #{table}") unless table == "schema_migrations"
end


	airports = Airport.create([{ code: 'SFO' }, { code: 'NYC' }])
	flights = Flight.create([
	{dep_airport_id: airports.first.id, arr_airport_id: airports.last.id, dep_time: "2020-12-01 08:00:00", duration: 6}, 
	{dep_airport_id: airports.first.id, arr_airport_id: airports.last.id, dep_time: "2020-12-01 09:00:00", duration: 6}, 
	{dep_airport_id: airports.first.id, arr_airport_id: airports.last.id, dep_time: "2020-12-01 19:40:00", duration: 7}, 
	{dep_airport_id: airports.last.id, arr_airport_id: airports.first.id, dep_time: "2020-12-02 10:00:00", duration: 8}, 
	{dep_airport_id: airports.last.id, arr_airport_id: airports.first.id, dep_time: "2020-12-02 13:00:00", duration: 8}, 
	{dep_airport_id: airports.last.id, arr_airport_id: airports.first.id, dep_time: "2020-12-02 17:20:00", duration: 9}	
	])

#DateTime.civil_from_format :local, 2020, 12, 1

