require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  # iterate over data hash (most-outer hash)
  # attribute refers to :color, :gender, :lives (inner-hashes)
  # and values refers to hashs or arrays inside each attribute
  data.each do |attribute, values|
    # loop deeper in values (hash of arrays)
    values.each do |key2, names|
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
