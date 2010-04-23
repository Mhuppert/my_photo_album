class AddPictureFolderToPage < ActiveRecord::Migration
  def self.up
    add_column :pages, :picture_folder, :string
  end

  def self.down
    remove_column :pages, :picture_folder
  end
end
