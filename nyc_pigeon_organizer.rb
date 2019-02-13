def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attrib, attrib_hash|
    attrib_hash do |stat, pigeon_array|
      pigeon_array do |pigeon|
        pigeon_list[pigeon] ||= {}
        pigeon_list[pigeon][:attrib] ||= []
        pigeon_list[pigeon][:attrib] << stat.to_s 
      end
    end
  end
  pigeon_list
end