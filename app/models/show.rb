require 'pry'
class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
  Show.name.where(self.highest_rating)
    # (highest_rating)
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def popular_shows

  end
end
