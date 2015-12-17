class CreateReposts < ActiveRecord::Migration
  def change
    create_table :reposts do |t|
    	t.integer :user_id
    	t.integer :track_id
      t.timestamps null: false
    end
  end
end
