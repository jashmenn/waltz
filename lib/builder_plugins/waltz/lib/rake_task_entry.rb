
class RakeTaskEntry
  #RakeTaskEntry = Struct.new :type, :task_name, :message, :stacktrace
  REGULAR_TYPE = "Task"
  attr_accessor :type, :task_name, :message, :stacktrace

  def self.create_task(task_name, message, stacktrace=nil)
    RakeTaskEntry.new(REGULAR_TYPE, task_name, message, stacktrace=nil)
  end

  def initialize(type, task_name, message="", stacktrace="")
    @type = type
    @task_name = task_name
    @message = message
    @stacktrace = stacktrace
  end

  def errors?
    # todo, maybe this regex should be pulled from the configuration
    @message =~ /(FAILURE:|Exception:|rake aborted|failed:)/i ? true : false
  end

end
