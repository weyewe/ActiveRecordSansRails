require File.dirname(__FILE__) + "/../../config/load_config.rb"

puts "The loc == " + File.dirname(__FILE__) + "/../../config/load_config.rb"

class InitialSchema < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :description
      t.integer :project_id
    end

    create_table :projects do |t|
      t.string :description
    end

  end

  def self.down
    drop_table :tasks
    drop_table :projects
  end
end

InitialSchema.up
