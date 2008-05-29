# Send email notifications about broken and fixed builds to email1@your.site, email2@your.site (default: send to nobody)
# project.email_notifier.emails = ['email1@your.site', 'email2@your.site']

CruiseControl::Log.verbose = true # required for proper viewing of rake tasks

# Set email 'from' field to john@doe.com:
# project.email_notifier.from = 'john@doe.com'

project.rake_task = 'cc:default'
project.source_control = FakeScm.new
project.log_publisher.globs = [] 
project.waltz_log_publisher.globs = []
project.waltz_log_publisher.tokens = ['ARTIFACT:']

# project.scheduler = WaltzScheduler.new(project)
# project.waltz.original_working_path = "/Users/nathan/s3"
project.waltz.original_working_path = "/var/www/htdocs/sitegen3/current"
project.waltz.rake_environment_variables = { 'SITE' => 'none' }

project.email_notifier.emails = ['nate@natemurray.com'] #

project.growl_notifier.subscribers = [
    "nate.myserver.com",
 ]
