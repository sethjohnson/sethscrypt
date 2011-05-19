module WorksHelper

  def author?(author_hash)
    @list = Author.find_by_first_name(author_hash[:first_name])

  end

end
