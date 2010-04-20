class Chapter < ActiveRecord::Base
  
  belongs_to :page
  
  validates_presence_of :page_id
  
end
