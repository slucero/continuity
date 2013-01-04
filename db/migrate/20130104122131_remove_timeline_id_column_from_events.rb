class RemoveTimelineIdColumnFromEvents < ActiveRecord::Migration
  def up
    remove_column :events, :timeline_id
  end

  def down
    add_column :events, :timeline_id, :integer
    add_index :events, :timeline_id
  end
end
