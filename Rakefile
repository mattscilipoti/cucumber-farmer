require 'rubygems'
require 'rake'

#load all .rake files
Dir[File.join(File.dirname(__FILE__), 'lib', '**/*.rake')].flatten.uniq.sort.each { |ext| load(ext) }


begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "cucumber-farmer"
    gem.summary = 'A library of cucumber step definitions, which allow you to use a human to assert conditions during acceptance tests.'
    gem.description = %Q{A library of cucumber step definitions, which allow you to use a human to assert conditions during acceptance tests.
      Some requirements are simple for a human to confirm, but are very difficult to assert using automation.
      Farmer allows us to include human confirmation into our normal testing flow.
      For example, we needed to verify that certain portions of an image were 'blacked out'.
    }
    gem.email = "matt@scilipoti.name"
    gem.homepage = "http://github.com/mattscilipoti/farmer"
    gem.authors = ["Matt Scilipoti"]
    gem.platform = Gem::Platform::RUBY
    gem.add_dependency('mattscilipoti-rdialog', '~> 0.6.1')
    gem.add_development_dependency "bundler", "~> 1.0.0"
    gem.add_development_dependency "ci_reporter", "~> 1.6.2"
    gem.add_development_dependency "cucumber", "~> 0.6"
    gem.add_development_dependency 'rack-test', '~> 0.5.0'
    gem.add_development_dependency "shoulda", "~> 2.10"
    gem.add_development_dependency 'sinatra', '~> 1.0'
    gem.add_development_dependency 'webrat'
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
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

task :test => :check_dependencies do
  puts '*****'
  puts "INFO: remember to run cucumber tests in test_app/"
  puts '*****'
end

task :default => [:test]

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "farmer #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

#cireporter
require 'rubygems'
# Install:
#  sudo gem install ci_reporter
gem 'ci_reporter'
require 'ci/reporter/rake/test_unit' # use this if you're using Test::Unit
