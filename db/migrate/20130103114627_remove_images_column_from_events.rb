class RemoveImagesColumnFromEvents < ActiveRecord::Migration
  def up
    remove_column :events, :images
  end

  def down
    add_column :events, :images, :string
  end
end
