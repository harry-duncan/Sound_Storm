class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
    	t.text :name
    	t.text :file
      t.timestamps null: false
    end
  end
end
