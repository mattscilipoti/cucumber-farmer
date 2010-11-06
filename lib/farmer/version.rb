module Farmer
   def self.version
    File.read(File.join(File.dirname(__FILE__), '../..', 'VERSION')).strip
  end
end
