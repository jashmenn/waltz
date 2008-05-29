Build.class_eval do 

  # the idea is to simply extend what the maximum filesize is
  def contents_for_display(file)
    return '' unless File.file?(file) && File.readable?(file)
    if File.size(file) < 9000 * 1024
      File.read(file)
    else
      contents = File.read(file, 9000 * 1024)
      "#{file} is over 9000 kbytes - too big to display in the dashboard, output is truncated\n\n\n#{contents}"
    end
  end

end
