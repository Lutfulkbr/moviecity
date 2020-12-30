class API

    def self.fetch_movies
        url = "https://ghibliapi.herokuapp.com/films"
        binding.pry
        uri = URI(url)
        response = Net::HTTP.get(uri)
        array_of_movies = JSON.parse(response)
        
    end

end