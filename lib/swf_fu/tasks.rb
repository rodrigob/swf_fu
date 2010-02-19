require 'fileutils'

namespace :swf do
  
  task :app_env do
    if defined?(RAILS_ROOT)
      Rake::Task[:environment].invoke
    end
  end
  
  desc "Install swf_fu assets into your rails application"
  task :install => :app_env do
    if defined?(RAILS_ROOT)
      # Some paths
      src = File.dirname(__FILE__) + "/../../assets"
      puts RAILS_ROOT + "/public"
      dest = RAILS_ROOT + "/public"

      filename =  "#{dest}/javascripts/swfobject.js"
      unless File.exist?(filename)
        FileUtils.cp "#{src}/javascripts/swfobject.js", filename
        puts "Copying 'swfobject.js'"
      end

      unless File.exist?("#{dest}/swfs/")
        FileUtils.mkdir "#{dest}/swfs/" 
        puts "Creating new 'swfs' directory for swf assets"
      end

      filename = "#{dest}/swfs/expressInstall.swf"
      unless File.exist?(filename)
        FileUtils.cp "#{src}/swfs/expressInstall.swf", filename
        puts "Copying 'expressInstall.swf', the default flash auto-installer."
      end
      puts "Installation done."
    else
      puts "Unable to do installation. We need to be in the root of a Rails Application."
    end
  end
  
  desc "Uninstall swf_fu assets from your rails application"
  task :uninstall => :app_env do
    if defined?(RAILS_ROOT)
      dest = RAILS_ROOT + "/public"
      FileUtils.rm  "#{dest}/javascripts/swfobject.js" rescue puts "Warning: swfobject.js could not be deleted"
      FileUtils.rm  "#{dest}/swfs/expressInstall.swf" rescue puts "Warning: expressInstall.swf could not be deleted"
      Dir.rmdir "#{dest}/swfs/" rescue "don't worry if directory is not empty"
    else
    end
  end
end