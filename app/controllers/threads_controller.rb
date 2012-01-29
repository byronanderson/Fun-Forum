class ThreadsController < ApplicationController
  # GET /threads
  # GET /threads.json
  def index
    @threads = ForumThread.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @threads }
    end
  end

  # GET /threads/1
  # GET /threads/1.json
  def show
    @thread = ForumThread.find(params[:id])
    @reply = Reply.new(thread: @thread, user: current_user)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @thread }
    end
  end

  # GET /threads/new
  # GET /threads/new.json
  def new
    @thread = ForumThread.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @thread }
    end
  end

  # GET /threads/1/edit
  def edit
    @thread = ForumThread.find(params[:id])
  end

  # POST /threads
  # POST /threads.json
  def create
    @thread = ForumThread.new(params[:forum_thread])

    respond_to do |format|
      if @thread.save
        format.html { redirect_to "/threads/#{@thread.id}", notice: 'Thread created.' }
        format.json { render json: @thread, status: :created, location: @thread }
      else
        format.html { render action: "new" }
        format.json { render json: @thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /threads/1
  # PUT /threads/1.json
  def update
    @thread = ForumThread.find(params[:id])

    respond_to do |format|
      if @thread.update_attributes(params[:thread])
        format.html { redirect_to threads_path(@thread), notice: 'Thread was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /threads/1
  # DELETE /threads/1.json
  def destroy
    @thread = ForumThread.find(params[:id])
    @thread.destroy

    respond_to do |format|
      format.html { redirect_to threads_url }
      format.json { head :no_content }
    end
  end
end
