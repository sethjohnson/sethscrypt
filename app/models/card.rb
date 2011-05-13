class Card < ActiveRecord::Base
  attr_accessible :suit_id, :value_id

  belongs_to :deck

  def suit
    
  end
end
