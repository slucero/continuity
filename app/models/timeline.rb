class Timeline < ActiveRecord::Base
  attr_accessible :summary, :title

  has_many :events
end
