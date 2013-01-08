class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :title
      t.text :summary

      t.timestamps
    end
    add_index :series, :title, :unique => true
  end
end
