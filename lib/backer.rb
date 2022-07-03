class Backer
attr_reader :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backers = ProjectBacker.all.select {|pb| pb.backer == self}
        backers.map {|backer| backer.project}
    end

end