class Waltz
  attr_accessor :original_working_path
  attr_accessor :project
  attr_accessor :rake_environment_variables

  def initialize(project = nil)
    @project = project
  end
  
  def logger
    CruiseControl::Log
  end

  def original_working_path=(path)
    @project.local_checkout = path
  end
end
