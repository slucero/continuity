class Event < ActiveRecord::Base
  attr_accessible :summary, :title

  has_many :occurrences
  has_many :timelines, :through => :occurrences
end
