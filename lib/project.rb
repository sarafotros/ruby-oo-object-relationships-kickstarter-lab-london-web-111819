class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end  
    
   
    def add_backer(backer)
     ProjectBacker.new(self,backer)
    end

    def backers
     project_back = ProjectBacker.all.select {|backer| backer.project == self}
     project_back.map {|proj| proj.backer}
    end

end
