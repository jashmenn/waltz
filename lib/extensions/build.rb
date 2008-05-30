Build.class_eval do 

  # todo - refactor even further to be setable by the project config
  def max_display_file_size
    9000 * 1024
  end

  # the idea is to simply extend what the maximum filesize is
  def contents_for_display(file)
    return '' unless File.file?(file) && File.readable?(file)
    if File.size(file) < self.max_display_file_size
      File.read(file)
    else
      contents = File.read(file, self.max_display_file_size)
      "#{file} is over #{self.max_display_file_size} bytes - too big to display in the dashboard, output is truncated\n\n\n#{contents}"
    end
  end

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
