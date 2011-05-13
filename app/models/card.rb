class Card < ActiveRecord::Base
  attr_accessible :suit_id, :value_id

  belongs_to :deck

  def value
    if (value_id.nil? || value_id == 0)
      return "Joe Schmoe"
    else
       return CardValue.find(value_id).name
    end

    
  end

  def suit
    if (suit_id.nil? || suit_id == 0)
      return "Suitlessnes"
    else
      return Suit.find(suit_id).name
    end
  end

  def name
    return value + " of " + suit + "s"
  end
end
