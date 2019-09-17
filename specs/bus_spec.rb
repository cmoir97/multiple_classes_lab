require("minitest/autorun")
require("minitest/rg")
require_relative("../Bus")
require_relative("../Person")
require_relative("../BusStop")

class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(22, "Ocean Terminal")

    @person1 = Person.new("John", 35)
    @person2 = Person.new("Maria", 28)
    @person3 = Person.new("Jack", 50)
    @person4 = Person.new("Ian", 42)

    @bus_stop1 = BusStop.new("Clermiston")
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

  def test_remove_all_passengers()
    @bus.add_passenger(@person1)
    @bus.add_passenger(@person2)
    @bus.remove_all_passengers()
    assert_equal(0, @bus.passenger_count())
  end



  def test_pick_up_passengers_from_stop()
      @bus.add_passenger(@person1)
      @bus_stop1.add_passenger_to_queue(@person2)
      @bus_stop1.add_passenger_to_queue(@person3)
      @bus_stop1.add_passenger_to_queue(@person4)
      @bus.pick_up(@bus_stop1)
      @bus_stop1.clear_queue()
      assert_equal(4, @bus.passenger_count())
      assert_equal(0, @bus_stop1.queue_count())
  end
end
