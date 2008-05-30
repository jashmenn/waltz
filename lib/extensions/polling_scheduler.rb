PollingScheduler.class_eval do

  # TODO - just subclass the polling scheduler and make a waltz scheduler that
  # just doesn't reload the project OR have the config modified reloading be an
  # option form the project config
  def run
    while (true) do
     begin
        @project.build_if_necessary or check_build_request_until_next_polling
        clean_last_build_loop_error
        # throw :reload_project if @project.config_modified? # don't do this, todo, write a diff poller, then
      rescue => e
        log_error(e) unless (same_error_as_before(e) and last_logged_less_than_an_hour_ago)
        sleep(Configuration.sleep_after_build_loop_error)
      end
    end
  end
 
end

