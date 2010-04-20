class Page < ActiveRecord::Base
  
  has_many :chapters, :dependent  => :destroy
  
  accepts_nested_attributes_for :chapters
end
