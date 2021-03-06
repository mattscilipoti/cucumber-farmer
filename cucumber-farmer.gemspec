# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cucumber-farmer}
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matt Scilipoti"]
  s.date = %q{2010-11-06}
  s.description = %q{A library of cucumber step definitions, which allow you to use a human to assert conditions during acceptance tests.
      Some requirements are simple for a human to confirm, but are very difficult to assert using automation.
      Farmer allows us to include human confirmation into our normal testing flow.
      For example, we needed to verify that certain portions of an image were 'blacked out'.
    }
  s.email = %q{matt@scilipoti.name}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.md"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "Gemfile",
     "Gemfile.lock",
     "History.txt",
     "LICENSE",
     "README.md",
     "Rakefile",
     "VERSION",
     "cucumber-farmer-1.0.1.gem",
     "cucumber-farmer-1.0.2.gem",
     "cucumber-farmer-1.0.3.gem",
     "cucumber-farmer.gemspec",
     "lib/farmer.rb",
     "lib/farmer/step_definitions.rb",
     "lib/farmer/version.rb",
     "test/helper.rb",
     "test/test_dependencies.rb",
     "test_app/Rakefile",
     "test_app/cucumber.yml",
     "test_app/features/home_page.feature",
     "test_app/features/human_confirmation.feature",
     "test_app/features/step_definitions/web_steps.rb",
     "test_app/features/support/env.rb",
     "test_app/lib/cucumber.rake",
     "test_app/test_app.rb"
  ]
  s.homepage = %q{http://github.com/mattscilipoti/cucumber-farmer}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A library of cucumber step definitions, which allow you to use a human to assert conditions during acceptance tests.}
  s.test_files = [
    "test/helper.rb",
     "test/test_dependencies.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mattscilipoti-rdialog>, ["~> 0.6.1"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<ci_reporter>, ["~> 1.6.2"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.4.0"])
      s.add_development_dependency(%q<cucumber>, ["~> 0.6"])
      s.add_development_dependency(%q<shoulda>, ["~> 2.10"])
      s.add_development_dependency(%q<webrat>, [">= 0"])
      s.add_development_dependency(%q<rack-test>, ["~> 0.5.0"])
      s.add_development_dependency(%q<sinatra>, ["~> 1.0"])
    else
      s.add_dependency(%q<mattscilipoti-rdialog>, ["~> 0.6.1"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<ci_reporter>, ["~> 1.6.2"])
      s.add_dependency(%q<jeweler>, ["~> 1.4.0"])
      s.add_dependency(%q<cucumber>, ["~> 0.6"])
      s.add_dependency(%q<shoulda>, ["~> 2.10"])
      s.add_dependency(%q<webrat>, [">= 0"])
      s.add_dependency(%q<rack-test>, ["~> 0.5.0"])
      s.add_dependency(%q<sinatra>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<mattscilipoti-rdialog>, ["~> 0.6.1"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<ci_reporter>, ["~> 1.6.2"])
    s.add_dependency(%q<jeweler>, ["~> 1.4.0"])
    s.add_dependency(%q<cucumber>, ["~> 0.6"])
    s.add_dependency(%q<shoulda>, ["~> 2.10"])
    s.add_dependency(%q<webrat>, [">= 0"])
    s.add_dependency(%q<rack-test>, ["~> 0.5.0"])
    s.add_dependency(%q<sinatra>, ["~> 1.0"])
  end
end

