require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data_value = []
  
  data.each do |attribute, value|
    value.each do |key2, names|
      names.each do |name|
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
        if !pigeon_list[name][attribute]
          pigeon_list[name][attribute] = []
        end 
        pigeon_list[name][attribute] << key2.to_s
        binding.pry
      end
    end
  end
  pigeon_list
end
