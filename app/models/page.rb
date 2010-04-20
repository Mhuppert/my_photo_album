class Page < ActiveRecord::Base
  
  has_many :chapters, :dependent  => :destroy
  

end
