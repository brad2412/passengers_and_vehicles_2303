require './lib/vehicle'
require './lib/passenger'
require 'rspec'

RSpec.describe Vehicle do
  describe 'initialize' do
    it 'exist' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle).to be_an_instance_of(Vehicle)
    end

    it 'year, make, and model' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.year).to eq("2001")
      expect(vehicle.make).to eq("Honda")
      expect(vehicle.model).to eq("Civic")
    end
  end

  describe '#speeding?' do
    it 'is not speeding' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.speeding?).to eq(false)
    end 
  end

  describe '#speed' do
    it 'is now speeding' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      vehicle.speed
      expect(vehicle.speed).to eq(true)
    end
  end

  describe 'passengers is set to zero by default' do
    it 'shows passengers being added' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.passengers).to eq([])
   end
  end

  describe '#add_passenger' do
    it 'shows passengers being added to @passenger' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)

      expect(vehicle.passengers).to eq([charlie, jude, taylor])
    end
  end

  describe '#num_adults' do
    it 'shows total count of adults in @passengers' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)

      expect(vehicle.num_adults).to eq(2)
    end
  end
end
