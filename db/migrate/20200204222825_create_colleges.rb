class CreateColleges < ActiveRecord::Migration[6.0]
  def change
    create_table :colleges do |t|
      t.string :image
      t.string :name
      t.string :location
      t.string :tuition
      t.string :overview
      t.string :website

      t.timestamps
    end
  end
end
