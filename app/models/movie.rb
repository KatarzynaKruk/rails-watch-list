class Movie < ApplicationRecord
  has_many :bookmarks

  validates :rating, presence:true,
  numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 10}
  validates :title, :overview, :poster_url, presence: true
  validates :title, :overview, uniqueness: true
end

#TO DO
#still need to finish setting up 2 other models
#run the migration
