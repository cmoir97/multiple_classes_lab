class Bus
attr_reader :route_number, :destination

def initialize(route_number, destination)
@route_number = route_number
@destination = destination
@passengers = []
end

def passenger_count()
  return @passengers.length()
end

end
