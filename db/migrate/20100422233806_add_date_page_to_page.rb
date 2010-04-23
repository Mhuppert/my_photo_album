class AddDatePageToPage < ActiveRecord::Migration
  def self.up
    add_column :pages, :date_page, :datetime
  end

  def self.down
    remove_column :pages, :date_page
  end
end
