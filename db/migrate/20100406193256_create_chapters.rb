class CreateChapters < ActiveRecord::Migration
  def self.up
    create_table :chapters do |t|
      t.integer :page_id
      t.string :title2
      t.text :description
      t.string :image_url
      t.datetime :date_chapter

      t.timestamps
    end
  end

  def self.down
    drop_table :chapters
  end
end
