require 'pry'
class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.name.where(self.highest_rating)
  end

end
