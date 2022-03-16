class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.tally
        # genre_hash = {}
        # @@genres.each do |genre|
        #     if genre_hash.has_key?(genre)
        #         genre_hash[genre] += 1
        #     else
        #         genre_hash[genre] = 1
        #     end
        # end
        # genre_hash
    end

    def self.artist_count
        @@artists.tally
    end
end

Song.new("Lucifer", "Jay-Z", "rap")
Song.new("99 Problems", "Jay-Z", "rap")
Song.new("hit me baby one more time", "Brittany Spears", "pop")

puts Song.artist_count
puts Song.genre_count
puts Song.count