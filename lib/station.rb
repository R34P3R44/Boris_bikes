require_relative 'bike'

class Dockingstation

    attr_reader :bikes

    def initialize
        @bikes = []
    end

    def release_bike
        fail 'No bikes available' if @bikes.empty?        
        @bikes.pop
    end

    def dock(bike)
        fail 'Docking station is full' if @bikes.count >= 20
        @bikes << bike
    end
end
