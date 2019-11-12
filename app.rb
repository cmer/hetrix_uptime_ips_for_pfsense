require 'rack/app'
require 'net/http'
require 'uri'

IP_URL = "https://hetrixtools.com/resources/uptime-monitor-ips.txt"
IP_RE  = /\d+\.\d+\.\d+\.\d+/

class App < Rack::App
  desc 'Return a list of IP addresses'
  get '/' do
    match = nil
    stream do |out|
      Net::HTTP.get(URI.parse(IP_URL)).each_line do |l|
        out << match + "\n" if match = l.match(IP_RE)[0]
      end
    end
  end
end

