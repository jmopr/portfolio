require './flight_planner.rb'

def test_code(flight_planner_instance)
  planner = flight_planner_instance
  tests = [
    [:can_i_fly?, ["MIA", "JFK"], true],
    [:can_i_fly?, ["MIA", "ORD"], false],
    [:can_i_fly?, ["MIA", "XXX"], false]
  ]
  puts "All tests passing? Yes!" if tests.all? {|t| planner.send(t[0], *t[1]) == t[2]}

  failed_tests = tests.reject {|t| planner.send(t[0], *t[1]) == t[2]}
  response = "All tests passing? No...\n"
  response = "tests fail for: #{failed_tests.map{|t| t[1]}}"
end

a_flight = FlightPlanner.new
test_code(a_flight)
