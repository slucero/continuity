class CreateOccurrences < ActiveRecord::Migration
  def change
    create_table :occurrences do |t|
      t.references :timeline
      t.references :event
      t.integer :weight

      t.timestamps
    end
    add_index :occurrences, :timeline_id
    add_index :occurrences, :event_id
  end
end
