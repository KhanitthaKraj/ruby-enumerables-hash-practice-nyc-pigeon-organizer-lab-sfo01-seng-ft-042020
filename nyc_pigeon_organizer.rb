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
        if !pigeon_list[name][key]
          pigeon_list[name][key] = []
        end 
        pigeon_list[name][key] << key2.to_s
      end
    end
    binding.pry
  end
  pigeon_list
end
