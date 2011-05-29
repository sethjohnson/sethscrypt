module PagesHelper

  def quote (str)
  str.gsub('\\','\\\\').gsub('\'','\\\'')
end

end
