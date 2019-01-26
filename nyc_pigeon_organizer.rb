require"pry"
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, value_hash|
    value_hash.each do |color, name_array|
      name_array.each do |name|
        pigeon_list[name] ||= {}
        #binding.pry
        pigeon_list[name][attribute] ||= []
        #binding.pry
        pigeon_list[name][attribute] << color.to_s
        #binding.pry
      end
    end
  end
pigeon_list
end
