Project.class_eval do 
  # instead of Project.read if we want to subclass - we may not even need to 
  def self.read(dir, load_config = true)
    @project_in_the_works = self.new(File.basename(dir))
    begin
      @project_in_the_works.load_config if load_config
      return @project_in_the_works
    ensure
      @project_in_the_works = nil
    end
  end
 
# just changed the erorr message - maybe dont even need this change
  def load_config
    begin
      retried_after_update = false
      begin
        load_and_remember config_tracker.central_config_file
      # TODO shouldn't it be "rescue Exception => e"?
      rescue
        if retried_after_update
          raise
        else
          @source_control.update
          retried_after_update = true
          retry
        end
      end
      load_and_remember config_tracker.local_config_file
    rescue Exception => e
      @error_message = "Could not load project configuration (tried #{config_tracker.central_config_file} and #{config_tracker.local_config_file}): #{e.message} in #{e.backtrace.first}"
      CruiseControl::Log.event(@error_message, :fatal) rescue nil
      @settings = ""
    end
    self
  end

end

