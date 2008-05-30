require 'pp'

# b/c this really needs refactoring in the core - it makes this ugly duplicate code from project.rb
class WaltzPluginLoader

  def self.load_plugin(plugin_path)
    plugin_file = File.basename(plugin_path).sub(/\.rb$/, '')
    plugin_is_directory = (plugin_file == 'init')  
    plugin_name = plugin_is_directory ? File.basename(File.dirname(plugin_path)) : plugin_file

    CruiseControl::Log.debug("Loading plugin #{plugin_name}")
    if RAILS_ENV == 'development'
      load plugin_path
    else
      if plugin_is_directory then require "#{plugin_name}/init" else require plugin_name end
    end
  end

  def self.load_all
    waltz_root = File.join(File.dirname(__FILE__), "..", "..") # TODO - why doesn't WALTZ_ROOT this work?
    plugins = Dir[waltz_root + "/lib/builder_plugins/*"] 
    
    pp waltz_root
    pp plugins

    plugins.each do |plugin|
      if File.file?(plugin)
        if plugin[-3..-1] == '.rb'
          load_plugin(File.basename(plugin))
        else
          # a file without .rb extension, ignore
        end
      elsif File.directory?(plugin)
        # ignore Subversion directory (although it should be considered hidden by Dir[], but just in case)
        next if plugin[-4..-1] == '.svn'
        init_path = File.join(plugin, 'init.rb')
        if File.file?(init_path)
          load_plugin(init_path)
        else
          log.error("No init.rb found in plugin directory #{plugin}")
        end
      else
        # a path is neither file nor directory. whatever else it may be, let's ignore it.
        # TODO: find out what happens with symlinks on a Linux here? how about broken symlinks?
      end
    end

  end

end
