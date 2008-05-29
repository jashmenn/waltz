require_dependency "project"

class Project

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
