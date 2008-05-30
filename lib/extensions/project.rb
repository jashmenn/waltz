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

end
