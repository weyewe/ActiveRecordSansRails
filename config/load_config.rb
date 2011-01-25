require 'rubygems'
require 'active_record'
require 'yaml'
puts "The load_config.rb  __FILE__ is " + File.dirname( __FILE__ )
class ProjectConfig
  attr_accessor :project_root
  attr_accessor :project_name
  attr_accessor :db_adapter
  attr_accessor :db_name
end

dbconfig = YAML::load( File.open( File.dirname(__FILE__) + '/project_config.yaml') )
ActiveRecord::Base.establish_connection( dbconfig) 
