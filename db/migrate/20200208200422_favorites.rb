class Favorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
    t.integer :user_id
    t.string :image
    t.string :name
    t.string :location
    t.string :tuition
    t.string :overview
    t.string :website
  end
end
end
