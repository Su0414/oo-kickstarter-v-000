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
    if(self.@backed_projects.empty?)
      self.@backed_projects = Project.new(backed_projects)
    end 
  end 
  
  def project_name=(project_name)
    if(self.backed_projects.nil?)
      self.backed_projects = Project.find_or_create_by_name(project_name)
      
    else 
      self.backed_projects.name = project_name
    end 
  end 
 
  def back_project(project) 
    @backed_projects << project
    
    new_project = Project.new 
    @backed_projects << new_project
    
  end 
  
end 