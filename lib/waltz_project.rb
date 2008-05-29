class WaltzProject < Project
  attr_accessor :working_project_root 

  def initialize(name, opts={})
    super(name, FakeScm.new)
    self.working_project_root = opts[:path] 
  end

  def write_config_example(project)
    super
    # add in default Rakefile
  end

  def build_if_necessary
    super
  end

  # TODO - modify Project to take a custom builder?
  def build_without_serialization(revision, reasons)
    return if revision.nil? # this will only happen in the case that there are no revisions yet

    notify(:build_initiated)
    previous_build = last_build    
    
    # this is the only change
    build = WaltzBuild.new(self, create_build_label(revision.number))
    
    begin
      log_changeset(build.artifacts_directory, reasons)
      update_project_to_revision(build, revision)

      if config_tracker.config_modified?
        build.abort
        notify(:configuration_modified)
        throw :reload_project
      end
    
      notify(:build_started, build)
      build.run
      notify(:build_finished, build)
    rescue 
      build.fail!($!.to_s)
      raise
    end

    if previous_build
      if build.failed? and previous_build.successful?
        notify(:build_broken, build, previous_build)
      elsif build.successful? and previous_build.failed?
        notify(:build_fixed, build, previous_build)
      end
    end

    build
  end


 
end

my_notes =<<-EOF
make a rakefile
a basic rakefile and have it do some things
do one build of an echo true
EOF
