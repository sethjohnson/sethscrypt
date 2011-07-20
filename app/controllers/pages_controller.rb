require 'net/http'

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
    @items = 
      Food.find(
        :all, :conditions => ["UPPER(name) LIKE ?", "#{@text.upcase}%"]).sort!{
        |a,b| a.name.downcase <=> b.name.downcase
      }
    render :layout => false
  end

   def ajax_xml
    @text = params[:q]
    if (@text != nil)
    @items =
      Food.find(
        :all, :conditions => ["UPPER(name) LIKE ?", "#{@text.upcase}%"]).sort!{
        |a,b| a.name.downcase <=> b.name.downcase
      }
    else
       @items =
      Food.all
    end
    render :layout => false
  end



end
