sample_config = File.join(File.dirname(__FILE__), "..", "site_configs", "waltz_sample_config.rb")

Project.configure(:using => sample_config) do |project|
  project.rake_task = 'cc_test'
  project.waltz.rake_environment_variables = { 'NONINTERACTIVE' => 'true', 
                                               'HOME' => '/var/www/htdocs/my_project', 
                                               'RAILS_ENV' => 'production' }
end
