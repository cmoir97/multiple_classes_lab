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

def add_passenger(new_passenger)
  @passengers.push(new_passenger)
end

def remove_passenger(passenger_to_remove)
  @passengers.delete(passenger_to_remove)
end

def remove_all_passengers()
  @passengers.clear()
end

def pick_up(stop)
  @passengers += stop.queue()
end

end
