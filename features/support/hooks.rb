

Before do |scenario|

  @scenario_name = scenario.name
  puts " ############################################## "
  puts " Running Scenario :- '#{@scenario_name}'"
  puts " ############################################## "
  load_data()
end

After do |scenario|
  puts 'inside after block in hooks file '
end



