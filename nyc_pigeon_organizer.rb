def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |info, info_value|
    info_value.each do |props, name_array|
      name_array.each do |name|
        if pigeon_list.key?(name)
          if pigeon_list[name][info]
            pigeon_list[name][info].push(props.to_s)
          else
            pigeon_list[name][info] = [props.to_s]
          end
        else
          pigeon_list[name] = {}
          pigeon_list[name][info] = [props.to_s]
        end
      end
    end
  end
  pigeon_list
end
