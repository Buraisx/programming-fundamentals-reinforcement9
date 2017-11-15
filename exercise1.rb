class Location
	def initialize(name)
		@name = name 
	end
	def name
		@name
	end
end

class Trip < Location
	def initialize
		@destinations = []
	end
	def add_location(location)
		@destinations << location
	end
	def all_locations
		puts "Began trip."
		count = 0
		@destinations.each do |location|
			count += 1
			if count != @destinations.length
				puts "Travelled from #{location.name} to #{@destinations[count].name}"
			end
		end
		puts "Ended trip."
	end
end

toronto = Location.new("Toronto")
ottawa = Location.new("Ottawa")
montreal = Location.new("Montreal")
quebec = Location.new("Quebec City")
halifax = Location.new("Halifax")

field_trip = Trip.new
field_trip.add_location( toronto)
field_trip.add_location( ottawa)
field_trip.add_location( montreal)
field_trip.add_location( quebec)
field_trip.add_location( halifax)

field_trip.all_locations