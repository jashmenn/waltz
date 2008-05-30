# todo, commented out until we get the issue ffigured out with the plugin loading

puts "loading waltz builder plugin"

# twitter refactotum
# thinkrelevance.com

$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')
require 'waltz'
require 'rake_task_entry'
require 'fake_scm'
require 'builds_helper_additions'
require 'waltz_scheduler'
require 'build_mixin'
require 'waltz_log_publisher'
require 'rake_task_notifier'
require 'project_mixin'

Project.plugin :waltz
BuildsHelper.send :include, Waltzy::BuildsHelperAdditions

#CruiseControl::Log.error("======================== sending the build this ====================")
