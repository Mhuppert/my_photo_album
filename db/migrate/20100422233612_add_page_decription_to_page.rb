class AddPageDecriptionToPage < ActiveRecord::Migration
  def self.up
    add_column :pages, :page_description, :text
  end

  def self.down
    remove_column :pages, :page_description
  end
end
