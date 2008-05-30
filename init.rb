# hook code goes here
WALTZ_ROOT = File.join(File.dirname(__FILE__))

require WALTZ_ROOT + "/lib/extensions/project.rb"
require WALTZ_ROOT + "/lib/extensions/build.rb"
require WALTZ_ROOT + "/lib/extensions/log_parser.rb"
require WALTZ_ROOT + "/lib/extensions/projects_helper.rb"
require WALTZ_ROOT + "/lib/extensions/polling_scheduler.rb"
require WALTZ_ROOT + "/lib/extensions/plugin_loader.rb"

#WaltzPluginLoader.load_all
