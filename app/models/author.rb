class Author < ActiveRecord::Base
  attr_accessible :first_name, :last_name
  has_many :works


  has_many :author_relationships
  has_many :works, :through => :author_relationships

  def wrote?(work)
    author_relationships.find_by_work_id(work)
  end

  def write!(work)
    author_relationships.create!(:work_id => work.id);
  end

  def name
    return first_name + " " + last_name
  end
end
