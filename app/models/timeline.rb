class Timeline < ActiveRecord::Base
  attr_accessible :summary, :title

  has_many :occurrences
  has_many :events, :through => :occurrences
end
