class Post
  attr_accessor :title, :author
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self #needed to display all posts
  end
  
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