# RakeTaskNotifier
# depends on EmailNotifier

class RakeTaskNotifier

  def initialize(project = nil)
    # warn "RakeTaskNotifier requires EmailNotifier" unless project.email_notifier.emails
  end

  # Configuration.email_from

  def build_finished(build)
    rake_task_logs = LogParser.new(build.full_output).rake_task_logs
    return unless rake_task_logs
    errors = rake_task_logs.find_all{|t| t.errors?}
    return unless errors

    subject = "#{build.project.name} regen #{build.label} had #{errors.size} rake task errors"
    body    = errors.collect{|t| t.message}.join("\n")
     
    build.project.email_notifier.send(:email, :deliver_build_report, build, subject, body)
  end
  
end

Project.plugin :rake_task_notifier
