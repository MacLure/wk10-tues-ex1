class Location

    def initialize(name)
        @name = name
    end

    def name
        return @name
    end

end

class Trip

    def initialize()
        @stops = []
    end

    def stops
        return @stops
    end

    def add_stop(stop)
        @stops << stop
    end

    def log
        puts "Begin trip."
        @stops.each_cons(2) do |a|
            puts "Travelled from #{a[0].name()} to #{a[1].name()}."
        end
        puts "End trip."
    end
end


Toronto = Location.new("Toronto")
Ottawa = Location.new("Ottawa")
Vancouver = Location.new("Vancouver")
Calgary = Location.new("Calgary")
Halifax = Location.new("Halifax")

My_Trip = Trip.new()

My_Trip.add_stop(Toronto)
My_Trip.add_stop(Ottawa)
My_Trip.add_stop(Vancouver)
My_Trip.add_stop(Calgary)
My_Trip.add_stop(Halifax)

My_Trip.log()