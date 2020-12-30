class CLI

    def call
        puts "Welcome"
        API.fetch_movies
    end

end