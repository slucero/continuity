class RemoveSequencesTable < ActiveRecord::Migration
  def up
    drop_table :sequences
  end

  def down
    create_table :sequences do |t|
      t.integer :timeline_id
      t.integer :event_id
      t.integer :weight

      t.timestamps
    end

    add_index :sequences, :timeline_id
    add_index :sequences, :event_id
  end
end
