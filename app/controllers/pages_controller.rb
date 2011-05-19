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

end
