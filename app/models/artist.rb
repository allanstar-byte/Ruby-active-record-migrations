# add the Artist class here
require 'active_record'

# Coneccting to a database

ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "db/artists.sqlite"
)

#  SQL to create the table:

sql = <<-SQL
  CREATE TABLE IF NOT EXISTS artists (
    id INTEGER PRIMARY KEY,
    Name TEXT,
    Genre TEXT,
    Age INTEGER,
    Hometown TEXT
    )
SQL

ActiveRecord::Base.connection.execute(sql)
