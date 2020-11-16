
class Project

    attr_accessor :title
    attr_reader 

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers = ProjectBacker.all.select do |backer| 
            backer.project == self
        end
        backers.collect do |backer|
            backer.backer
        end
    end

end