class PagesController < ApplicationController
  # GET /pages
  # GET /pages.xml
  
  
  def sort
  	@page = Page.find(params[:id])
  	@page.chapters.each do |chapter|
  		chapter.position = params['page-list'].index(chapter.id.to_s) + 1
  		chapter.save
  	end
  	render :nothing => true
  end
  
  def index
    @pages = Page.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pages }
    end
  end

  # GET /pages/1
  # GET /pages/1.xml
  def show
    @page = Page.find(params[:id])
    
      
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @page }
    end
  end

  # GET /pages/new
  # GET /pages/new.xml
  def new
    @page = Page.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @page }
    end
  end

  # GET /pages/1/edit
  def edit
    @page = Page.find(params[:id])
  end

  # POST /pages
  # POST /pages.xml
  def create
    @page = Page.new(params[:page])

    respond_to do |format|
      if @page.save
        flash[:notice] = 'Page was successfully created.'
        format.html { redirect_to(@page) }
        format.xml  { render :xml => @page, :status => :created, :location => @page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pages/1
  # PUT /pages/1.xml
  def update
    @page = Page.find(params[:id])

    respond_to do |format|
      if @page.update_attributes(params[:page])
        flash[:notice] = 'Page was successfully updated.'
        format.html { redirect_to(@page) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.xml
  def destroy
    @page = Page.find(params[:id])
    @page.destroy

    respond_to do |format|
      format.html { redirect_to(pages_url) }
      format.xml  { head :ok }
    end
  end
  
  #DRAG AND DROP 
  def toto
  	@page = Page.find(params[:id])
  	@page.chapters.each do |chapter|
  		chapter.position = params['page'].index(chapter.id.to_s) + 1
  		chapter.save
  	end
  	render :nothing => true
  end	
  

  #Sort Chapters
  
  def sort_c
  	 page = Page.find(params[:id])
  	@page = Page.find(params[:id])
    
    @link_image =  @page.picture_folder + "/"
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @page }
    end
   end

  
  #session
  def add_to_album
  	 page = Page.find(params[:id])
  	 @album = find_album
  	 @album.add_page(page)
  	
  redirect_to :controller => 'chapters', :action => 'index'
   end
   
    private
  
  def find_album
  	session[:album] ||= Album.new
  end
  
  
 end
