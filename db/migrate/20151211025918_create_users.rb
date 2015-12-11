class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.text :name
    	t.text :email
    	t.text :image 
    	t.text :bio
    	t.text :social_facebook
    	t.text :social_twitter
    	t.text :social_instagram
    	t.boolean :artist, :default => false
      t.timestamps null: false
    end
  end
end
