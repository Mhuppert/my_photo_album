class ListeController < ApplicationController
  
  def index
      @pages = Page.find_pages_for_display
     
  end
  
  def show
    @pages = Page.find_pages_for_display
    @chapters = Chapter.find_chapters_for_display(params[:id])
     
    @page = Page.find(params[:id])
    @link_image =  @page.picture_folder + "/"
   
  end

end

