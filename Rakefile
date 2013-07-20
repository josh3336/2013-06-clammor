#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Clams::Application.load_tasks

namespace :db do
   task :environment do
        ActiveRecord::Base.establish_connection :adapter => 'sqlite3', :database =>  'db/dev.sqlite3.db'
   end
 

   # :migrate task depends on :environment task
   # before :migrate runs, rake first runs all its
   # dependent tasks (i.e. :environment)
   #
   # in this case we must first create the database 
   # and establish a connection before we migrate it.
   desc "Migrate the database"
   task(:migrate => :environment) do
        ActiveRecord::Migration.verbose = true
        ActiveRecord::Migrator.migrate("db/migrate")
   end
end
