# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

require 'csv'

t = Timeline.create({ :title => 'Avengers Disassemble', :summary => 'Things go terribly wrong.' });

CSV.foreach('doc/disassemble.csv') do |row|
  series, issue, weight = row
  e = Event.new({
    :title => "#{series} ##{issue}",
  })
  e.timeline = t

  e.save
end
