class Author
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def posts #has many songs
    #Post.all = array of all posts
    Post.all.select {|new_post| new_post.author == self}
  end  
  
  # takes in arg of a post and associates that post w/ author
  # by telling the post that it belongs to that author
  def add_post(new_post)
    new_post.author = self 
    # test: beatty.posts to include hello_world
  end
  
  # takes in an arg of post title
  # creates a new post with it and associates the post and author 
  def add_post_by_title(title)
    title = Post.new(title) #title: now an instance containing title str
    add_post(title)
    
    # - TEST -
    #   betty.add_post_by_title("My Great Blog Post")
    #   expect(betty.posts.last.title).to eq("My Great Blog Post")
    #   expect(betty.posts.last.author).to eq(betty)
  end
  
  # class method to return the total # posts associated to all existing authors
  def self.post_count # self = Author class
    Post.all.length
    
    # TEST: Author.post_count #> 3
  end
end