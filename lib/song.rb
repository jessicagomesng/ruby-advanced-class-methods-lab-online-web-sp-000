class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song.name = @name
    self.all << song
    song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    @name = name
    self.create
  end

  def self.find_by_name(name)
    #iterate through @@all and return the song
    self.all.detect do |song|
      song.name == name
    end
  end

  def self.find_or_create_by_name(name)
      self.find_by_name(name)
    if self.find_by_name(name) == 0
      self.create_by_name(name)
    end

end
