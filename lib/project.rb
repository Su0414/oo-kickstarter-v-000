class Project 
  attr_accessor :title , :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end 
  
  def add_backer(backer_instance)
    @backers << backer_instance
    backer_instance.backed_projects << self if backer_instance.backed_projects != self
  end 
  
end 