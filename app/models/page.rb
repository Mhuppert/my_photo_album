class Page < ActiveRecord::Base
  
  has_many :chapters, :dependent  => :destroy, :order => "position"
  
  def self.find_pages_for_display
    find(:all, :order => "date_page")
  end
    

end
