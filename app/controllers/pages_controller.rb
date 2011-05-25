class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def about
    @title = "About"
  end

  def tools
    @title = "Tools"
  end

  def playground
    @title = "Play Ground"
  end

  def ajax
    @text = params[:q]
    @items = Food.find(:all, :conditions => ["name LIKE ?", "#{@text}%"])
    render :layout => false
  end

end
