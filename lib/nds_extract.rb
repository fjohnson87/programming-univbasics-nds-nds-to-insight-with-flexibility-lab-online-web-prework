# Provided, don't edit
require 'directors_database'

# A method we're giving you. This "flattens"  Arrays of Arrays so: [[1,2],
# [3,4,5], [6]] => [1,2,3,4,5,6].

def flatten_a_o_a(aoa)
  result = []
  i = 0

  while i < aoa.length do
    k = 0
    while k < aoa[i].length do
      result << aoa[i][k]
      k += 1
    end
    i += 1
  end

  result
end

def movie_with_director_name(director_name, movie_data)
  { 
    :title => movie_data[:title],
    :worldwide_gross => movie_data[:worldwide_gross],
    :release_year => movie_data[:release_year],
    :studio => movie_data[:studio],
    :director_name => director_name
  }
end


# Your code after this point

def movies_with_director_key(name, movies_collection)
  # GOAL: For each Hash in an Array (movies_collection), provide a collection
  # of movies and a directors name to the movie_with_director_name method
  # and accumulate the returned Array of movies into a new Array that's
  # returned by this method.
  #
  # INPUT:
  # * name: A director's name
  # * movies_collection: An Array of Hashes where each Hash represents a movie
  #
  # RETURN:
  #
  # Array of Hashes where each Hash represents a movie; however, they should all have a
  # :director_name key. This addition can be done by using the provided
  # movie_with_director_name method
  director_name = ["Stepthen Spielberg”, “Russo Brothers”, "James Cameron","Spike Lee", “Robert Zemeckis”, “Quentin Tarantino”, "Martin Scorsese", "Francis Ford Coppola"]
  1.	vending_machine = [[[{director_name: "Stepthen Spielberg”, movies_collection:[“Jaws”, “Munich”,”Duel”]},
2.	{director_name: “Russo Brothers” movies_collection:[“Avengers”,”Dhaka”]},
3.	{director_name: "James Cameron movies_collection:[“Avator”, “Aliens”]},
4.	{director_name: "Spike Lee" movies_collection:[“Crooklyn”, “Oldboy”]},
5.	{director_name: “Robert Zemeckis”: movies_collection:[“Allied”, “Cast Away”]},
{director_name: “Quentin Tarantino movies_collection:[“Curdled” “Hostel”]},
6.	{director_name: "Martin Scorsese movies_collection:[“Silence”, “Casino”]}],
7.	{director_name: "Francis Ford Coppola"movies_collection:[“Twixt”, “Tetro”]}]]]

end


def gross_per_studio(collection)
  # GOAL: Given an Array of Hashes where each Hash represents a movie,
  # return a Hash that includes the total worldwide_gross of all the movies from
  # each studio.
  #
  # INPUT:
  # * collection: Array of Hashes where each Hash where each Hash represents a movie
  #
  # RETURN:
  #
  # Hash whose keys are the studio names and whose values are the sum
  # total of all the worldwide_gross numbers for every movie in the input Hash
end

def movies_with_directors_set(source)
  # GOAL: For each director, find their :movies Array and stick it in a new Array
  #
  # INPUT:
  # * source: An Array of Hashes containing director information including
  # :name and :movies
  #
  # RETURN:
  #
  # Array of Arrays containing all of a director's movies. Each movie will need
  # to have a :director_name key added to it.
  gross = [
      { :title ["Jaws", “Munich”, “Duel”]}, :studio => "Universal", :worldwide_gross => 10 },
      { :title [“Avengers”,”Dhaka”]},:studio => "Universal", :worldwide_gross => 30 },
      { :title [“Avator”, “Aliens”]},
:studio => " Universal ", :worldwide_gross => 30 
{ :title [“Crooklyn”, “Oldboy”]},:studio => "Universal", :worldwide_gross => 10 },
8.	      { title [“Allied”, “Cast Away”]},
1.	
studio => "Universal", :worldwide_gross => 30 },
      { :title [“Curdled” “Hostel”]},
:studio => " Columbia", :worldwide_gross => 30 }
{ :title :[“Silence”, “Casino”]}],

:studio => "Columbia", :worldwide_gross => 30 }
{ :title :[“Twixt”, “Tetro”]}

:studio => "Columbia ", :worldwide_gross => 30 }
}


end

# ----------------    End of Your Code Region --------------------
# Don't edit the following code! Make the methods above work with this method
# call code. You'll have to "see-saw" to get this to work!

def studios_totals(nds)
  a_o_a_movies_with_director_names = movies_with_directors_set(nds)
  movies_with_director_names = flatten_a_o_a(a_o_a_movies_with_director_names)
  return gross_per_studio(movies_with_director_names)
end
