class Post
  attr_accessor :title, :author
  
  @@all = [] #class variable set to an array
  
  def initialize(title)
    @title = title
    @@all << self #needed to display all posts
  end
  
  # class method to return array of all song instances created
  def self.all #needed to display all posts
    @@all 
  end
  
  def author_name #name of author
    if self.author
      self.author.name
    else
      self.author
    end
  end
end