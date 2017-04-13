require 'active_record'

ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: "tmp/development.db")
ActiveRecord::Migration.verbose = false
