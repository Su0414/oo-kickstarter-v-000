class Project 
  attr_accessor :title , :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end 
  
  def add_backer(backer_instance)
    @backers << backer_instance
    backer_instance.project
  end 
  
end 