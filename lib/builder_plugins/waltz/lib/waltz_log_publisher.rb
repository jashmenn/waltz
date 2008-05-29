# this plugin will publish logs from your project into the build directory after a build finishes
# by default, it will publish files it finds that match the pattern 
#
# <pre><code>log/*log</code></pre>
#
# but it can be configured to match any number of patterns like this
# 
# <pre><code>project.waltz_log_publisher.globs = ['log/*.log', 'tmp/*']</code></log>
#
require 'fileutils'

class WaltzLogPublisher < LogPublisher
  attr_accessor :tokens
  
  def initialize(project)
    super
    @tokens = ["ARTIFACT:"]
  end

  def build_finished(build)
    super
    
    @tokens.each do |token|
      artifacts_in(build_log_contents(build), token).each do |file|
        from_file, to_file = *file.split(/\s+/)

        if File.exists?(from_file)
          FileUtils.mv from_file, File.join(build.artifacts_directory, to_file) 
        else
          warn "#{from_file} doesn't exist!" 
        end

      end
    end
  end

  private
    def build_log_contents(build)
      File.read(build.artifact('build.log'))
    end

    def artifacts_in(log, token="ARTIFACTS:")
      artifacts = LogParser.new(log).value_matching(token)
      return nil unless artifacts
      #CruiseControl::Log.error("======================== #{artifacts.pretty_inspect}")
      artifacts
    end
end

Project.plugin :waltz_log_publisher

