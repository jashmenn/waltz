Build.class_eval do 

  # todo - refactor even further to be setable by the project config
  def max_display_file_size
    9000 * 1024
  end

  # the idea is to simply extend what the maximum filesize is
  def contents_for_display(file)
    return '' unless File.file?(file) && File.readable?(file)
    if File.size(file) < self.max_display_file_size
      File.read(file)
    else
      contents = File.read(file, self.max_display_file_size)
      "#{file} is over #{self.max_display_file_size} bytes - too big to display in the dashboard, output is truncated\n\n\n#{contents}"
    end
  end

end
