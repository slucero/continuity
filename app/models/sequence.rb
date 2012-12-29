class Sequence < ActiveRecord::Base
  attr_accessible :event, :timeline, :weight

  belongs_to :event
  belongs_to :timeline
end
