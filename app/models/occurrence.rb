class Occurrence < ActiveRecord::Base
  belongs_to :timeline
  belongs_to :event
  attr_accessible :weight
end
