class WorksController < ApplicationController
  def new
    @work = Work.new
    @title = "Create a new work"
  end

  def index
    @works = Work.all
    @title = "All your works"
  end

  def show
     @work = Work.find(params[:id])
     @title = @work.title
  end

  def create
    @work = Work.new(params[:work])
    if @work.save
      flash[:success] = "Success!"
      redirect_to @work
    else
#      @title = "Sign up"
#      @user.password = ""
#      @user.password_confirmation = ""
      render 'new'
    end
  end


  def destroy
      Work.find(params[:id]).destroy
      flash[:success] = "Work destroyed."
      redirect_to works_path

  end

end
