require 'json'

class RandomMovies
  attr_accessor :json_data

  def initialize
    @json_data = JSON.parse(File.read('../lib/movie_names.json'))  
  end

  # method to search through the arrays of movie names
  def generate_movie_name
    array = []
    @json_data.each do |data|
      array << data['title']
    end
    array[random_number_generator]
  end

  def random_number_generator(num)
    Random.new.rand(0..num)
  end
end
