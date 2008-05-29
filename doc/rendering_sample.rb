# from the old streamlined. to override the template roots. thanks goes out to the guys from streamlined
# for sharing this code at railsconf08
#
STREAMLINED_ROOT = Pathname.new(File.join(File.dirname(__FILE__), "../..")).expand_path.to_s
STREAMLINED_TEMPLATE_ROOT = 
File.join(Pathname.new(STREAMLINED_ROOT).relative_path_from(Pathname.new(RAILS_ROOT+"/app/views").expand_path),
          "/templates")
STREAMLINED_GENERIC_VIEW_ROOT = "#{STREAMLINED_TEMPLATE_ROOT}/generic_views"


def generic_view(template)
  "#{STREAMLINED_GENERIC_VIEW_ROOT}/#{template}"
end


def render(options = {}, deprecated_status = nil, &block) 
  options = convert_all_options(options)
  super(options, deprecated_status, &block)
end

def convert_all_options(options)
  options = convert_default_options(options)
  options = convert_action_options(options)
  options = convert_partial_options(options)
end

def convert_partial_options(options)
  partial = options[:partial]
  if partial && managed_partials_include?(partial)
    unless specific_template_exists?("#{controller_name}/_#{partial}")
      options.delete(:partial)
      options[:template] = generic_view("_#{partial}")
      options[:layout] = false unless options.has_key?(:layout)
    end
  end
  options
end

def convert_default_options(options)
  options = { :update => true } if options == :update
  options = {:action=>action_name} if options.empty?
  options
end

def convert_action_options(options)
  action = options[:action]
  if action && managed_views_include?(options[:action])
    unless specific_template_exists?("#{controller_name}/#{options[:action]}")
      options.delete(:action)
      options[:template] = generic_view(action)
    end
  end
  options
end


