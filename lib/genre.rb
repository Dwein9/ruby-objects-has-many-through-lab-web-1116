class Genre

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(instance_of_song)
    @songs << instance_of_song
    instance_of_song.genre = self
  end

  def artists
    self.songs.collect { |song| song.artist }
  end
end
