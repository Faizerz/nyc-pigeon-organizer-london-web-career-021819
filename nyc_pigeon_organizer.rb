def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attrib, attrib_hash|
    attrib_hash do |stat, pigeon_array|
      pigeon_array do |pigeon|
        pigeon_list[pigeon] = {
          data[:color]: [attrib_hash[:color]],
          data[:gender]: [attrib_hash[:gender]],
          data[:lives]: [attrib_hash[:lives]]
        }
      end
    end
  end
end