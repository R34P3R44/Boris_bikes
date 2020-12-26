
class Bike
    def working?
        @working
    end

    def report_broken
        @working = false
    end

    def initialize
        @working = true
    end
end