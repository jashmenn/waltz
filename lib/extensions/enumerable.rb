# from http://www.bofh.org.uk/articles/2007/12/16/comprehensible-sorting-in-ruby
Enumerable.class_eval do
  def sensible_sort
    sort_by {|k| k.to_s.split(/((?:(?:^|\s)[-+])?(?:\.\d+|\d+(?:\.\d+?(?:[eE]\d+)?(?:$|(?![eE\.])))?))/ms).map {|v| Float(v) rescue v.downcase}}
  end
end

