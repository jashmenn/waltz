#require_dependency "builds_helper"

module Waltzy
  module BuildsHelperAdditions

    def format_rake_log(log)
      rake_task_logs = LogParser.new(log).rake_task_logs
      return nil unless rake_task_logs
      rake_task_logs.collect{|task| format_rake_task(task)}.join
    end

    def format_rake_task(task)
      render :partial => "builds/rake_task", :locals => { :task => task }
    end

    def task_class(task)
      task.errors? ? "error" : "normal"
    end

    def format_rake_entry_contents(log)
      new_log = highlight_errors(log) 
      new_log 
    end

    def highlight_errors(log)
      log.gsub(/(FAILURE:|Exception:|rake aborted|failed:)(.*)/i) do |match|
          "<span class='error'>#{match}</span>"
      end
    end


  end
end
