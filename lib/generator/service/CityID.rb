require 'json'

# generator for ID, requires testing as well
class CityID
  attr_accessor :json_data

  def initialize
    @json_data = JSON.parse(File.read('./lib/city_list.json'))
  end

  # method to search through json file and return city id
  def get_id_by_name(city_name, country)

    @json_data.each do |data|
      if (data['name'] == city_name) && (data['country'] == country)
        return data['id']
      end
    end
  end

  def get_random_city 
    @json_data.each do |data|
      if (data['name'] == city_name) && (data['country'] == country)
        return data['id']
      end
    end
  end
end