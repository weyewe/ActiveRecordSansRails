require File.dirname(__FILE__) + "/../lib/models.rb"

Project.all.each do |project|
  puts project.description
end

