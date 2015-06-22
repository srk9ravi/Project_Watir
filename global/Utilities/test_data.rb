
module TestData

  @subset = ""
  def load_data()
    scenario_found = false
    data_file_path = File.open(File.expand_path('../../test_data/data.yaml',__FILE__))
    set = YAML.load_file(data_file_path)
      set.each {|key, value|
        if key.eql?(@scenario_name)
          scenario_found=true
          if not value.nil?
            @subset = set[key]
            # puts " inside load_data "
            # puts @subset
            # data_file_path.close
            return
          end
        end

      }
        if scenario_found==false
          @subset =set["Deafult"]
          puts "Current Scenario '#{@scenario_name}' is not found in the data.yaml file"
          file_name.close
        end
  end

  def get_data(key_value)
    if @subset[key_value.to_s].nil?
      raise "Parameter (#{key_value}) does not exist in yaml file under '#{@scenario_name}' scenario)"
    else
      return @subset[key_value.to_s]
    end
  end

end