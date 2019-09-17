require("minitest/autorun")
require("minitest/rg")
require_relative("../Bus")
require_relative("../Person")

class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(22, "Ocean Terminal")
  end

  def test_passengers_on_bus()
    assert_equal(0, @bus.passenger_count())
  end







end
