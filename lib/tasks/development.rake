namespace :database do
  desc "Create songs and genres to seed the database"
  task :seed => :environment do
    Genre.delete_all
    Song.delete_all
    SongGenre.delete_all

    s = [
      "Glad You Came",
      "Payphone",
      "Gangnam Style",
      "Mercy",
      "Empire State of Mind",
      "Runaway",
      "Love Lockdown",
      "We Are Young",
      "Somebody That I Used To Know",
      "Calling",
      "Levels"
    ]

    g = [
      "Hip Hop",
      "Classical",
      "Pop",
      "Hip Hop",
      "Classical",
      "Pop",
      "Hip Hop",
      "Classical",
      "Pop",
      "Pop"
    ]
    (1..10).each do |i|
      song = Song.create(:name => s[i-1])
      song.genres << Genre.create(:name => g[i-1])
    end
  end
end