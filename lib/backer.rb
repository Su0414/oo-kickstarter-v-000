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
  
  
 
  def back_project(project) 
    @backed_projects << project
    
    new_project = Project.new 
    @backed_projects << new_project
    
  end 
  
end 