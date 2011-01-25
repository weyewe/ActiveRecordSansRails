require File.dirname(__FILE__) + "/../config/load_config.rb"
require File.dirname(__FILE__) + "/../lib/models.rb"
puts "We are ready to put data"

Project.create(:description => "Willy is one two three")
Project.create(:description => "Willy2 is one bla bla");
