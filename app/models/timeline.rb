class Timeline < ActiveRecord::Base
  attr_accessible :summary, :title

  has_many :sequences
  has_many :events, through: :sequences
end
