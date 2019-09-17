require("minitest/autorun")
require("minitest/rg")
require_relative("../Bus")
require_relative("../Person")
require_relative("../BusStop")

class BusStopTest < MiniTest::Test

def setup()
  @bus_stop1 = BusStop.new("Clermiston")

  @person3 = Person.new("Jack", 50)
end

def test_add_person_to_queue()
  @bus_stop1.add_passenger_to_queue(@person3)
  assert_equal(1, @bus_stop1.queue_count())
end


end
