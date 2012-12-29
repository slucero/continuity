class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.string :title
      t.text :summary

      t.timestamps
    end
  end
end
