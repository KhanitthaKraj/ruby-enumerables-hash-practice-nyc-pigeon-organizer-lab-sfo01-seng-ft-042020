require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  # iterate over data-hash (most-outer hash)
  # attribute refers to :color, :gender, :lives (inner-hashes)
  # and values refers to properties inside each attribute-hash
  data.each do |attribute, values|
    # loop deeper over values
    # key2 refers to each key that points to an array (e.g.:purple)
    # and nemes refers to an array of strings/names that key2 points to
    values.each do |key2, names|
      # iterate over names-array and while each element inside = |name|
      names.each do |name|
        # check if name element already exist in pigeon_list-hash
        # if not yet exist assign that name element into the hash
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
