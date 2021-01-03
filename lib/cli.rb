class CLI

    def call
        puts ""
        puts "Welcome to the Movie City!"
        API.fetch_movies
        menu
    end

    def menu
        puts ""
        puts "To reveal the list of movies type 'yes' or any other key to exit!"

        input = gets.strip.downcase

        if input == "yes" || input == "y"
            sleep (1)
            puts "---------"
            puts "Here's the list of movies!"
            puts "---------"
            display_list_of_movies
            ask_user_for_movie_choice

            sleep(1)

            menu
            puts ""
            puts "Goodbye. Thank you for using Movie city !!!"
            puts "🎥 🎞"
            puts ""
        end
    end

    def display_list_of_movies
        Movie.all.each.with_index(1) do |movie, i|
            puts "#{i}. #{movie.title}"
        end
    end

    def ask_user_for_movie_choice
        puts ""
        puts "Enter the number from the list you'd like to know more info about: "
        input = gets.strip.to_i - 1

        until input.between?(0, Movie.all.length - 1)
            puts "Invalid entry! Please choose a valid number:"
            input = gets.strip.to_i - 1
        end

        movie_instance = Movie.all[input]

        display_movie_details(movie_instance)
    end

    def display_movie_details(movie)
        sleep(1)
        puts ""
        puts "title: #{movie.title}"
        puts ""
        puts "description: #{movie.description}"
        puts ""
        puts "director: #{movie.director}"
        puts ""
        puts "producer: #{movie.producer}"
        puts ""
        puts "release_date: #{movie.release_date}"
        puts ""
        puts "rt_score: #{movie.rt_score}"
        puts ""
    end


end