require 'pry'
class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
  Show.where(rating: self.highest_rating).first
    # (highest_rating)
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def least_popular_shows
      Show.where(rating: self.lowest_rating).first
  end

  
end
