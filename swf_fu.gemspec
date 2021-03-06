# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{swf_fu}
  s.version = "1.3.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marc-Andr\303\251 Lafortune", "Marcus Wyatt", "Rodrigo Benenson"]
  s.date = %q{2011-06-27}
  s.description = %q{swf_fu (pronounced "swif-fu", bonus joke for french speakers) uses SWFObject 2.2 to embed swf objects in HTML and supports all its options.
    SWFObject 2 is such a nice library that Adobe now uses it as the official way to embed swf!
    SWFObject's project can be found at http://code.google.com/p/swfobject

    swf_fu has been tested with rails v2.0 up to v3.0b and has decent test coverage so <tt>rake test:plugins</tt> should reveal any incompatibility. Comments and pull requests welcome: http://github.com/marcandre/swf_fu}
  s.email = %q{gemcutter@marc-andre.ca marcus.wyatt@visfleet.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    "CHANGELOG.rdoc",
     "FLASH_OBJECT.rdoc",
     "LICENSE",
     "README.rdoc",
     "VERSION",
     "vendor/assets/javascripts/swfobject.js",
     "vendor/assets/swfs/expressInstall.swf",
     "lib/action_view/helpers/asset_tag_helper/swf_asset.rb",
     "lib/action_view/helpers/swf_fu_helper.rb",
     "lib/swf_fu.rb"
  ]
  s.homepage = %q{http://github.com/marcus-wyatt/swf_fu}
  s.post_install_message = %q{
swf_fu has rake tasks to install and uninstall the assets required 
when running within a rails project. To enable the rake tasks, add 
the following require to your Rakefile:
    
  require 'swf_fu/tasks' 

}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{With the swf_fu gem, rails treats your swf files like any other asset (images, javascripts, etc...).}
  s.test_files = [
    "test/results.rb",
     "test/swf_fu_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 2.10.3"])
    else
      s.add_dependency(%q<shoulda>, [">= 2.10.3"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 2.10.3"])
  end
end

