class BusStop
attr_reader :name, :queue

def initialize(name)
  @name = name
  @queue = []
end

def queue_count()
  return @queue.length()
end

def add_passenger_to_queue(new_passenger)
  @queue.push(new_passenger)
end


def clear_queue()
  @queue.clear()
end

end
