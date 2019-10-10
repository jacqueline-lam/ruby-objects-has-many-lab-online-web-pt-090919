class Post
  attr_accessor :title, :author
  
  @@all = [] #class variable set to an array
  
  def initialize(title)
    @title = title #instance has a title
    @@all << self #needed to display all posts
  end
  
  # class method to return array of all post instances created
  def self.all #needed to display all posts
    @@all 
  end
  
  def author_name 
    if self.author #post knows name of author
      self.author.name
    else #returns nil if post doesn't have author
      self.author
    end
  end
end