def nyc_pigeon_organizer(data)
  data.each do |attrib, attrib_hash|
    attrib_hash do |stat, pigeon_array|
      pigeon_array do |pigeon|
        pigeon_list ||= {}
        pigeon_list[pigeon] ||= {}
        pigeon_list[pigeon][:attrib] << stat
      end
    end
  end
end