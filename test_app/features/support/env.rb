# See http://wiki.github.com/aslakhellesoy/cucumber/sinatra
# for more details about Sinatra with Cucumber

app_file = File.expand_path('../../test_app', File.dirname(__FILE__))
require app_file

# Force the application name because polyglot breaks the auto-detection logic.
Sinatra::Application.app_file = app_file

gem 'rack-test', '>=0.5.0'
require 'test/unit/assertions'
require 'rack/test'
require 'webrat'

Webrat.configure do |config|
  config.mode = :rack
end

class TestAppWorld
  include Test::Unit::Assertions
  include Rack::Test::Methods
  include Webrat::Methods
  include Webrat::Matchers
  # Webrat::Methods.delegate_to_session :response_code, :response_body

  def app
    Sinatra::Application
  end
end

#add farmer lib to load path (like gem command would do)
farmer_lib_path = File.expand_path('../../../lib/', File.dirname(__FILE__))
$LOAD_PATH.unshift farmer_lib_path

#>>>>>>>> Adding farmer steps here >>>>>>>>>>>>>>>>>
require 'farmer/step_definitions'
#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

World { TestAppWorld.new }
