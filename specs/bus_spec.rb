require("minitest/autorun")
require("minitest/rg")
require_relative("../Bus")
require_relative("../Person")

class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(22, "Ocean Terminal")

    @person1 = Person.new("John", 35)
    @person2 = Person.new("Maria", 28)
  end

  def test_passengers_on_bus()
    assert_equal(0, @bus.passenger_count())
  end

def test_add_passenger()
  @bus.add_passenger(@person1)
  assert_equal(1, @bus.passenger_count())
end

def test_remove_passenger()
  @bus.add_passenger(@person1)
  @bus.add_passenger(@person2)
  @bus.remove_passenger(@person2)
  assert_equal(1, @bus.passenger_count())
end




end
