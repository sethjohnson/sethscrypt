class Work < ActiveRecord::Base
  attr_accessible :title
  attr_accessor :author
 validates :title,  :presence   => true,
                    :length     => { :maximum => 50 }
 
end
