class Event < ActiveRecord::Base
  attr_accessible :summary, :title

  belongs_to :timeline
end
