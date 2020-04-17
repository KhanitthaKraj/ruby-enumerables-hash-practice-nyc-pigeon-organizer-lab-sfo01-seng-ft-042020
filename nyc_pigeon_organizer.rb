require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data_value = []
  
  data.each do |key, value|
    value.each do |key2, value2|
      data_value << value2
    end
    uniq_flatten_data = data_value.flatten.uniq
    pigeon_list.insert(uniq_flatten_data)
    binding.pry

  end
  
end
