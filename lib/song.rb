class Song

attr_reader :name, :artist

def initialize (name)
  @name = name

end

def name= (name)
  @name = name
end

def artist= (name)
  @artist = name
end

def self.new_by_filename (file)
array = file.split(" - ")
x = self.new(array[1])
# binding.pry
x.artist = Artist.find_or_create_by_name(array[0])
x.artist.add_song(array[1])
  # binding.pry
x
end

end
