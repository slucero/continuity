class Event < ActiveRecord::Base
  attr_accessible :image, :summary, :title

  has_many :sequences
  has_many :events, through :sequences
end
