require_relative './service/Postcodes'
require_relative './service/CityID'
require_relative './service/RandomMovies'
require_relative './service/RandomName'
class Generator

  def random_movie
    RandomMovies.new
  end

  def random_postcode
    Postcodes.new
  end

  def random_cityID
    CityID.new
  end

  def random_name
    RandomName.new
  end

end

