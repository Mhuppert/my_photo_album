class Page < ActiveRecord::Base
  
  has_many :chapters, :dependent  => :destroy
  
  def self.find_pages_for_display
    find(:all, :order => "date_page")
  end
    

end
