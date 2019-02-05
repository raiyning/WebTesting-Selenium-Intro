require_relative './service/Postcodes'
require_relative './service/CityID'
require_relative './service/RandomMovies'
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

end

test = Generator.new
some = test.random_movie
p some.generate_movie_name