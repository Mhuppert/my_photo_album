class AddPicturePageToPage < ActiveRecord::Migration
  def self.up
    add_column :pages, :picture_page, :string
  end

  def self.down
    remove_column :pages, :picture_page
  end
end
