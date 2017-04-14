require 'net/http'

class DataPusher
  def initialize(host)
    @host = host
  end

  def send(path, post_hash)
    Net::HTTP.post_form(URI.parse("#{@host}#{path}"), post_hash)
  end
end
