ProjectsHelper.class_eval do 
  require 'fileutils'

  def project_logo(project)
    directory = File.dirname(File.expand_path(File.join(project.config_tracker.central_config_file, "..")) )
    original_logo = File.join(directory, "logo.gif")
    if File.exists?(original_logo)
      # create it in the public/plugin_assets directory if it doesnt exist already 
      cache_logo_file = File.join("plugin_assets", "#{project.name}.gif")
      full_logo_file_path = File.join(RAILS_ROOT, "public", "images", cache_logo_file)

      FileUtils.mkdir_p(File.dirname(full_logo_file_path)) unless File.exists?(full_logo_file_path)

      if !File.exists?(full_logo_file_path)
        FileUtils.cp(original_logo, full_logo_file_path)
      end
      image_tag(cache_logo_file)
    else
      "<!-- no logo.gif found -->"
    end
  end

end
