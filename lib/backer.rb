
class Backer

    attr_accessor
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backers = ProjectBacker.all.select do |proj| 
            proj.backer == self
        end
        project_backers.collect do |proj|
            proj.project
        end
    end

end