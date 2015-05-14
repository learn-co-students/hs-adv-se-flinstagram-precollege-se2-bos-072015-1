class CreatePhotos < ActiveRecord::Migration
  def up
  	create_table :photos do |t|
  		t.string :link
  		t.integer :user_id
  	end
  end

  def down
  	drop_table :photos
  end
end
