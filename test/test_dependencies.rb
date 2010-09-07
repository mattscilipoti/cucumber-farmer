require 'helper'
class TestDialog < Test::Unit::TestCase
  def test_dialog_should_be_installed_and_available
    assert_match /Version: 1/, %x[dialog --version]
  end
end
