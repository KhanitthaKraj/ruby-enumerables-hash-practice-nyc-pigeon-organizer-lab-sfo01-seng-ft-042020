require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data_value = []
  
  data.each do |key, value|
    value.each do |key2, names|
      names.each do |name|
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
        binding.pry
      end
      
      #data_value << value2
    end
    #uniq_flatten_data = data_value.flatten.uniq

    

  end
  
end
