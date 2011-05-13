class CardsController < ApplicationController
  def new
    @title = "Create a new card!"
    @card = Card.new
  end

   def create
    @card = Card.new(params[:card])
   

      flash[:success] = "You just created a " + CardValue.find(@card.value_id).name + " of " + Suit.find(@card.suit_id).name  + "s"
      redirect_to '/'

     
  end
end
