class Work < ActiveRecord::Base
  attr_accessible :title

  validates :title,  :presence   => true,
                    :length     => { :maximum => 50 }
end
