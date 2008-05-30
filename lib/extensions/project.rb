Project.class_eval do 

# The problem is that this does not allow subclassing 
# Index: models/project.rb
# ===================================================================
# --- models/project.rb	(.../vendor/cruisecontrolrb/1.2.1/app)	(revision 390)
# +++ models/project.rb	(.../trunk/app)	(working copy)
# @@ -8,7 +8,7 @@
#    end
#  
#    def self.read(dir, load_config = true)
# -    @project_in_the_works = Project.new(File.basename(dir))
# +    @project_in_the_works = self.new(File.basename(dir))
#      begin
#        @project_in_the_works.load_config if load_config
#        return @project_in_the_works

  # instead of Project.read if we want to subclass we want to say "self.read"
  def self.read(dir, load_config = true)
    @project_in_the_works = self.new(File.basename(dir))
    begin
      @project_in_the_works.load_config if load_config
      return @project_in_the_works
    ensure
      @project_in_the_works = nil
    end
  end

  # TODO this is ugly and the eval is probably not the best way to do this.  oh well. it works for now 
  def self.configure(opts={})
    raise 'No project is currently being created' unless @project_in_the_works
    if base_config_file = opts[:using]
      raise ":using argument passed but I can't find that file #{base_config_file}" unless File.exists?(base_config_file)

      project = @project_in_the_works
      fake_config_file = File.read(base_config_file) << "\n"
      eval fake_config_file, binding
    end
    yield @project_in_the_works
  end

end
