require File.dirname(__FILE__) + "/../config/load_config.rb"

class Task < ActiveRecord::Base
  belongs_to :project
end

class Project < ActiveRecord::Base
  has_many :tasks
end


