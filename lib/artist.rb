class Artist

  attr_reader :name

  @@all = []


  def self.all
    @@all
  end

  def initialize (name)
    @name = name
    @artist_songs = []
  end

  def name= (name)
    @name = name
  end

  def songs
    @artist_songs
  end

  def add_song(song)
    @artist_songs << song
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
   x = @@all.find do |artist|
     artist.name == name
    #  binding.pry
   end
   if x
     x
   else
     y = self.new(name)
     y.save
     y
   end
  end

# binding.pry

  def print_songs

    @artist_songs.each do |song|
      puts song.name
    end
    # binding.pry
  end

end
