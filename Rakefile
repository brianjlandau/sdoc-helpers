begin
  require 'jeweler'

  $LOAD_PATH.unshift File.dirname(__FILE__) + '/lib'
  require 'sdoc_helpers/version'

  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "brianjlandau-sdoc-helpers"
    gemspec.summary = "Simple helpers to make using sdoc easier."
    gemspec.description = "Simple helpers to make using sdoc easier."
    gemspec.email = "chris@ozmm.org"
    gemspec.homepage = "http://github.com/brianjlandau/sdoc-helpers"
    gemspec.authors = ["Chris Wanstrath", "Brian Landau"]
    gemspec.version = SDocHelpers::Version.to_s
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available."
  puts "Install it with: gem install jeweler"
end
