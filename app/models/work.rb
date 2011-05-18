class Work < ActiveRecord::Base
  attr_accessible :title
  attr_accessor :author
 validates :title,  :presence   => true,
                    :length     => { :maximum => 50 }

  has_many :author_relationships

  has_many :authors, :through => :author_relationships


   def written_by?(author)
    author_relationships.find_by_author_id(author)
  end

  def written_by!(author)
    author_relationships.create!(:author_id => author.id);
  end

   def author_string
     output = ""
     if (authors.length == 1)

      output = authors[0].name

     elsif

       authors[0,authors.length-1].each do |a|
         output += a.name
         output += ", "
       end

       output += "and "
       output += authors.last.name

     else

      output = "anonymous";
    end

     return output;
  end
end
