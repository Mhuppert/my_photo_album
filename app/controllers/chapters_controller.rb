class ChaptersController < ApplicationController
  
	# GET /chapters
  # GET /chapters.xml
  def index
  		  
	  @page_session = find_album
	  
	  for npage in @page_session.npages
	  	#link_image =  npage.id.picture_folder + "/"
	  	s_page = npage.id
	  end
	 	  
  	@chapters = Chapter.find(:all, :conditions => {:page_id => s_page}, :order => "page_id, position")
  	
 
  	
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @chapters }
    end
  end

  # GET /chapters/1
  # GET /chapters/1.xml
  def show
    @chapter = Chapter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @chapter }
    end
  end

  # GET /chapters/new
  # GET /chapters/new.xml
  def new
  	
  	@page_session = find_album
	  
	  for npage in @page_session.npages
	  	s_page = npage.id
	  end
  	
    @chapter = Chapter.new
    @chapter.page_id = s_page
   


    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @chapter }
    end
  end
  
  def new_title
  	
  	@page_session = find_album
	  
	  for npage in @page_session.npages
	  	s_page = npage.id
	  end
  	
    @chapter = Chapter.new
    @chapter.page_id = s_page
   


    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @chapter }
    end
  
  end
  
  def new_text
  	
  	@page_session = find_album
	  
	  for npage in @page_session.npages
	  	s_page = npage.id
	  end
  	
    @chapter = Chapter.new
    @chapter.page_id = s_page
   


    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @chapter }
    end
  
  end
  
   def new_pic
  	
  	@page_session = find_album
	  
	  for npage in @page_session.npages
	  	s_page = npage.id
	  end
  	
    @chapter = Chapter.new
    @chapter.page_id = s_page
   


    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @chapter }
    end
  
  end
  
  
  # GET /chapters/1/edit
  def edit
    @chapter = Chapter.find(params[:id])
  end

  # POST /chapters
  # POST /chapters.xml
  def create
    @chapter = Chapter.new(params[:chapter])

    respond_to do |format|
      if @chapter.save
        flash[:notice] = 'Chapter was successfully created.'
        format.html { redirect_to(@chapter) }
        format.xml  { render :xml => @chapter, :status => :created, :location => @chapter }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @chapter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /chapters/1
  # PUT /chapters/1.xml
  def update
    @chapter = Chapter.find(params[:id])

    respond_to do |format|
      if @chapter.update_attributes(params[:chapter])
        flash[:notice] = 'Chapter was successfully updated.'
        format.html { redirect_to(@chapter) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @chapter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /chapters/1
  # DELETE /chapters/1.xml
  def destroy
    @chapter = Chapter.find(params[:id])
    @chapter.destroy

    respond_to do |format|
      format.html { redirect_to(chapters_url) }
      format.xml  { head :ok }
    end
  end
  
  # GO TO PAGES
  def go_to_page
  	
  	redirect_to :controller => 'pages', :action => 'index'
  end
  
   
  private
  
  # Session
  def find_album
  	session[:album]
  end
  
end
