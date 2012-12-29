class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :image
      t.text :summary

      t.timestamps
    end
  end
end
