class CardsController < ApplicationController
  def new
    @title = "Create a new card!"
    @card = Card.new
  end

   def create
    @card = Card.new(params[:card])
   
   if  @card.save
      flash[:success] = "You just created a " + @card.value + " of " + @card.suit  + "s"
      @card = Card.new
      render 'new'
   end
     
  end

   def index
     @title = "All Cards"
     @cards = Card.all
   end


  def destroy
      Card.find(params[:id]).destroy
      flash[:success] = "Card torn up."
      redirect_to cards_path

  end
end
