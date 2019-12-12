require 'pry'
class Backer
    attr_reader :name


  def initialize(name)
    @name = name
    
  end    

  

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    projec_backers = ProjectBacker.all.select {|project| project.backer == self}
    projec_backers.map {|proj| proj.project}
  end


end

