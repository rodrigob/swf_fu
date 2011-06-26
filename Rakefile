require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "swf_fu"
    gem.summary = %Q{With the swf_fu gem, rails treats your swf files like any other asset (images, javascripts, etc...).}
    gem.description = %Q{swf_fu (pronounced "swif-fu", bonus joke for french speakers) uses SWFObject 2.2 to embed swf objects in HTML and supports all its options.
    SWFObject 2 is such a nice library that Adobe now uses it as the official way to embed swf!
    SWFObject's project can be found at http://code.google.com/p/swfobject

    swf_fu has been tested with rails v2.0 up to v3.0b and has decent test coverage so <tt>rake test:plugins</tt> should reveal any incompatibility. Comments and pull requests welcome: http://github.com/marcandre/swf_fu}
    gem.email = "gemcutter@marc-andre.ca marcus.wyatt@visfleet.com"
    gem.homepage = "http://github.com/marcus-wyatt/swf_fu"
    gem.authors = ["Marc-André Lafortune", "Marcus Wyatt"]
    gem.add_development_dependency "shoulda", ">= 2.10.3"
    gem.files     = FileList[
      "vendor/assets/**/*.js",
      "vendor/assets/**/*.swf",
      "rails/*.rb",
      "lib/**/*.rb",
      "tasks/**/*.rb",
      "tasks/**/*.rake",
      "CHANGELOG.rdoc",
      "FLASH_OBJECT.rdoc",
      "LICENSE",
      "README.rdoc",
      "VERSION"
    ]
    gem.test_files = FileList[
      "test/**/*.rb"
    ]
    gem.post_install_message = <<-MESSAGE
\nswf_fu has rake tasks to install and uninstall the assets required 
when running within a rails project. To enable the rake tasks, add 
the following require to your Rakefile:
    
  require 'swf_fu/tasks' \n
    MESSAGE
    
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/test_*.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "Swf Fu #{version}"
  rdoc.options << '--line-numbers' << '--inline-source' << '-m README.rdoc'
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('LICENSE')
  rdoc.rdoc_files.include('CHANGELOG.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end


