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
      dest = RAILS_ROOT + "/public"

      unless File.exist?("#{dest}/javascripts/swfobject.js")
        FileUtils.cp "#{src}/javascripts/swfobject.js", "#{dest}/javascripts/swfobject.js"
        puts "Copying 'swfobject.js'"
      end

      unless File.exist?("#{dest}/swfs/")
        FileUtils.mkdir "#{dest}/swfs/" 
        puts "Creating new 'swfs' directory for swf assets"
      end

      unless File.exist?("#{dest}/swfs/expressInstall.swf")
        FileUtils.cp "#{src}/swfs/expressInstall.swf", "#{dest}/swfs/expressInstall.swf"
        puts "Copying 'expressInstall.swf', the default flash auto-installer."
      end

      puts "Installation done."
    else
      puts "Unable to do installation. We need to be in the root of a Rails Application."
    end
  end
  
  task :rm_swfobject do
    if defined?(RAILS_ROOT)
      begin
        FileUtils.rm  "#{RAILS_ROOT}/public/javascripts/swfobject.js"
      rescue Exception => e
        puts "Warning: swfobject.js could not be deleted"
      end
    end
  end

  task :rm_express_install do
    if defined?(RAILS_ROOT)
      begin
        FileUtils.rm  "#{RAILS_ROOT}/public/swfs/expressInstall.swf"
      rescue Exception => e
        puts "Warning: expressInstall.swf could not be deleted"
      end
    end
  end
  
  task :rm_swf_dir do
    if defined?(RAILS_ROOT)
      begin
        Dir.rmdir "#{RAILS_ROOT}/public/swfs/"
      rescue Exception => e
        puts "Don't remove swf directory if directory is not empty"
      end
    end
  end
  
  desc "Uninstall swf_fu assets from your rails application"
  task :uninstall => [:app_env, :rm_swfobject, :rm_express_install, :rm_swf_dir]
  
end