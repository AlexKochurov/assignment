require 'webrick'

task :s do
  log_file = File.open 'logs/development.log', 'a+'
  # log = WEBrick::Log.new log_file
  # access_log = [[log_file, WEBrick::AccessLog::COMBINED_LOG_FORMAT]]
  access_log = [
    [$stderr,  WEBrick::AccessLog::COMMON_LOG_FORMAT + " PARAMETERS=%{body}n"],
    [log_file, WEBrick::AccessLog::COMMON_LOG_FORMAT + " PARAMETERS=%{body}n"]
  ]

  root = File.expand_path './app/views/layouts/application.html'
  server = WEBrick::HTTPServer.new :Port => 8000, :DocumentRoot => root, :AccessLog => access_log #, :Logger => log
  trap 'INT' do server.shutdown end

  server.mount_proc '/' do |req, res|
    req.attributes['body'] = req.body
    res.body = "Web server response:\n"
  end

  server.start
end

# Restore Database
task :dback do
  `rm db/development.sqlite3`
  `cp db/development.sqlite3.backup db/development.sqlite3`
end
