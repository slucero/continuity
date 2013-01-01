class AddTimelineIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :timeline_id, :integer
    add_index :events, :timeline_id
  end
end
