app_file = File.expand_path('../../test_app', File.dirname(__FILE__))
require app_file

# Sinatra::Application.app_file = app_file


class TestAppWorld
  def app
    Sinatra::Application
  end
end

World { TestAppWorld.new }
