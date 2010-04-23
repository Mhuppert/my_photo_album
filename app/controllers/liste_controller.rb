class ListeController < ApplicationController
  def index
    
    @pages = Page.find_pages_for_display
    
  end

end
