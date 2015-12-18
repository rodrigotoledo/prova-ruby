begin
  require 'rubygems'
rescue LoadError
  puts "'rubygems' not found."
  exit
end

begin
  require 'log'
rescue LoadError
  puts "'log' not found."
  exit
end

begin
  require 'pg'
rescue LoadError
  puts "'pg' not found."
  exit
end

begin
  require 'yaml'
rescue LoadError
  puts "'yaml' not found."
  exit
end

# Example
# database = Database.new
# data = database.get_connection.exec("select * from cars").first
class Database

  def initialize
    @logger = Log.new
    @connection = get_connection
  end

  def connect(host, port, db, user, pw)
    PGconn.new(host, port, '', '', db, user, pw)
  end

  def get_connect
    @connection
  end

  def get_connection
    config = YAML::load(File.open('config/postgres.yml'))
    begin
      conn = connect(config['host'], config['port'], config['database'],config['user'],config['password'])
      @logger.info "Connected to database #{conn.db} on #{conn.host}"
    rescue PGError=>e
      @logger.info "Can't connect to database. [#{e}]"
    end
    @logger.close
    conn
  end

  def close
    @connection.close unless @connection.nil?
    @logger.info "end connection."
    @logger.close
  end

end
