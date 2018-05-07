class Backer 
  
  attr_accessor :backed_projects
  attr_reader :name
  
  def initialize(name)
    @name = name 
    @backed_projects = []
  end 
  
  def name=(name)
    @name = name 
  end
  
  def backed_projects=(backed_projects)
    @backed_projects = backed_projects
    @backed_projects.add_backer(self) if !backed_projects.backers.include?(self)
  end 
  
  def back_project(project) 
    @backed_projects << project
  end 
  
end 