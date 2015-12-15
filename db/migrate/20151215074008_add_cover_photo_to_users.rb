class AddCoverPhotoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cover_photo, :text
  end
end
