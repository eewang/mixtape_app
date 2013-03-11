class Song < ActiveRecord::Base
  attr_accessible :name

  has_many :song_genres
  has_many :genres, :through => :song_genres
end
