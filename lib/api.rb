class API

    def self.fetch_movies
        url = "https://ghibliapi.herokuapp.com/films"
        uri = URI(url)
        response = Net::HTTP.get(uri)

        array_of_movies = JSON.parse(response)

        array_of_movies.each do |movie_hash|
            movie = Movie.new
            movie.title = movie_hash["title"]
            movie.description = movie_hash["description"]
            movie.director = movie_hash["director"]
            movie.producer = movie_hash["producer"]
            movie.release_date = movie_hash["release_date"]
            movie.rt_score = movie_hash["rt_score"]
        end
    end

end