class Chapter < ActiveRecord::Base
  
  belongs_to :page
  acts_as_list :scope => :page
  
  validates_presence_of :page_id
  
  def self.find_chapters_for_display(chapter)
    find(:all, :conditions => {:page_id => chapter}, :order => "position")
  end
  
     
end
