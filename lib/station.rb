require_relative 'bike'

class Dockingstation

    DEFAULT_CAPACITY = 20

    attr_reader :capacity, :bikes

    attr_accessor :capacity

    def initialize(capacity=DEFAULT_CAPACITY)
        @bikes = []
        @capacity = capacity
    end

    def release_bike
        fail 'No bikes available' if empty?        
        @bikes.pop
    end

    def dock(bike)
        fail 'Docking station is full' if full?
        @bikes << bike
    end
    
    private

    def full?
        @bikes.count >= capacity
    end

    def empty?
        @bikes.empty?
    end
end
