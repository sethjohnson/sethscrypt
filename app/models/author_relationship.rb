class AuthorRelationship < ActiveRecord::Base
  attr_accessible :author_id, :work_id

  belongs_to :author, :class_name => "Author"
  belongs_to :work,   :class_name => "Work"

  validates  :author_id, :presence   => true
  validates  :work_id,   :presence   => true
end
