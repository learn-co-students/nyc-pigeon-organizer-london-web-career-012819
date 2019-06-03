def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key, inner_hash| 
    inner_hash.each do |inner_key, value_arr |
      value_arr.each do |name|
        if !new_hash[name]  
          new_hash[name] = {}
        end

        if !new_hash[name].include?(key) 
          new_hash[name][key] = []
        end 

        if !new_hash[name][key].include?(inner_key)
          new_hash[name][key] << inner_key.to_s
        end 
      end 
    end 
  end 
  new_hash
end