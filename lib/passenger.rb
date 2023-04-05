class Passenger
  attr_reader :name,
              :age,
              :drive

  def initialize(passenger_information)
    @name = passenger_information["name"]
    @age = passenger_information["age"]
    @driver = false
  end

  def adult?
    @age >= 18
  end

  def driver?
    @driver
  end

  def drive
    @driver = true
  end
end
