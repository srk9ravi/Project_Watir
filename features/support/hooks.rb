

Before do |scenario|

  @scenario_name = scenario.name
  puts " ############################################## "
  puts " Running Scenario :- '#{@scenario_name}'"
  puts " ############################################## "
  load_data()
end

After do |scenario|
  if scenario.failed?
    puts " Scenario FAILED :- '#{@scenario_name}'"
    puts " ############################################## "
  else
    puts " Scenario PASSED :- '#{@scenario_name}'"
    puts " ############################################## "
  end
end



