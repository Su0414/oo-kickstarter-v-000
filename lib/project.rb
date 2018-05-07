class Project 
  attr_accessor :title , :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end 
  
  
   def self.create_by_title(project_name)
    new_project = self.new(project_name)
    new_project.save 
    new_project.title = project_name
    new_project
  end 
  
  
  def self.find_by_name(new_project)
    @@all.detect{|new_projects| new_projects.title == new_project}
  end 
  
  def self.find_or_create_by_name(project_name)
    self.find_by_name(project_name) || self.create_by_name(project_name)
  end 
  
  
  def add_backer(backer)
    @backers << backer
  end 
  
end 