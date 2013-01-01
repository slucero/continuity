class Event < ActiveRecord::Base
  attr_accessible :image, :summary, :title

  belongs_to :timeline
end
