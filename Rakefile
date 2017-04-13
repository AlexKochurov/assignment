require 'webrick'

task :s do
  # log_file = File.open 'logs/development.log', 'a+'
  # log = WEBrick::Log.new log_file
  # access_log = [[log_file, WEBrick::AccessLog::COMBINED_LOG_FORMAT]]

  root = File.expand_path './app/views/layouts/application.html'
  server = WEBrick::HTTPServer.new :Port => 8000, :DocumentRoot => root #,
                                   #:Logger => log, :AccessLog => access_log
  trap 'INT' do server.shutdown end

  server.start
end
