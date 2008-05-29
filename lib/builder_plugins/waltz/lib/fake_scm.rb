require 'ostruct'

class FakeScm
  attr_accessor :url, :path, :username, :password, :check_externals, :give_new_version

  def initialize(options = {})
    @give_new_version = false # FakeScm only gives a new version when explicitly told to do so
    @tries = 1 # todo, delete once you get other stuff figured out
  end

  def up_to_date?(reasons = [], revision_number = last_locally_known_revision.number)
    # debugging for now so i just run once
    #if @tries > 0
      #reasons << latest_revision # have to modify the reasons array
      #@tries = @tries - 1
      #return false
    #else
      #return true
    #end

    #if @give_new_version
      #reasons << latest_revision # have to modify the reasons array
      #return false
    #else
      #return true
    #end

    if last_locally_known_revision < latest_revision
      reasons << latest_revision # have to modify the reasons array
      return false
    else
      return true
    end

  end

  # just look to the folder and increment. how do we get the folder? - i think we can use #path
  # todo - test
  def last_locally_known_revision
    build_parent_path = File.join(self.path, "..") 
    build_folders     = Dir.glob(File.join(build_parent_path, "build-*"))
    most_recent_full  =  build_folders.sensible_sort.pop
    return Revision.new(0) unless most_recent_full
    most_recent = File.basename(most_recent_full)
    most_recent =~ /^build-(\d+)\.*\d*/
    current_revision = $1
    return Revision.new(current_revision.to_i)
  end

  def latest_revision
    build_parent_path = File.join(self.path, "..") 
    revision_file = File.join(build_parent_path, "REVISION")
    return last_locally_known_revision unless File.exists?(revision_file)
    revno = IO.readlines(revision_file)[0].to_i
    return Revision.new(revno)


    #if @give_new_version
      #@give_new_version = false
      #return Revision.new(last_locally_known_revision.number + 1)
    #else
      #return Revision.new(last_locally_known_revision.number)
    #end
  end

  # dummy methods
  def update(revision = nil)
  end

  def error_log
  end
  
  def clean_checkout(revision = nil, stdout = $stdout)
  end

  def checkout(revision = nil, stdout = $stdout)
  end

  def externals
  end

end
