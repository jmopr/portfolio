class FlightPlanner
  def initialize
    @flights = {
      "MIA" => ["JFK", "PHX", "LHR", "FLL"],
      "AUS" => ["SFO", "ORD"],
      "FLL" => ["WPB", "AUS", "JFK"],
      "PHX" => ["SFO", "LAX", "LAS"]
    }
  end
  def can_i_fly?(start, destination)
    @flights[start].include? destination
  end
end
