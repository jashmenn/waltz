LogParser.class_eval do 
  def rake_task_logs(opts = {})
    opts[:skips] ||= /cc:/

    rake_tasks = []

    @log.gsub(find_rake_execute_regex) do |match|
      task_name, message = $1, $2
      next if task_name =~ opts[:skips]
      rake_tasks << RakeTaskEntry.create_task(task_name, message)
    end

    return rake_tasks
  end

  def value_matching(token, opts={})
    # opts[:skips] ||= /cc:/

    values = []

    regex = token.kind_of?(Regexp) ? token : /#{token}\s*(.*)\s*/

    @log.gsub(regex) do |match|
      value = $1
      next unless value
      value = value.strip
      next if value =~ opts[:skips]
      values << value
    end

    return values
  end

  private
  def find_rake_execute_regex
    /\*\* Execute (.*?)\n(.*?)((?=\*)|\z)/m
  end

end
