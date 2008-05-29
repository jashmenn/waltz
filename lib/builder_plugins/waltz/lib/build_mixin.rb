require_dependency "build"

class Build
  def rake
    if project.waltz.rake_environment_variables
      project.waltz.rake_environment_variables.each do |key,value|
        ENV[key] = value
      end
    end

    %{#{Platform.interpreter} -e "require 'rubygems' rescue nil; 'custom builder rake=true'; require 'rake'; load '#{ABSOLUTE_RAILS_ROOT}/tasks/cc_build.rake'; ARGV << '--nosearch'#{CruiseControl::Log.verbose? ? " << '--trace'" : ""} << 'cc:build'; Rake.application.run; ARGV.clear"}
  end

  def full_output
    @full_output ||= full_contents(artifact('build.log'))
  end

  def full_contents(file)
     File.read(file)
  end

end
