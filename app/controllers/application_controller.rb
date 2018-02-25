class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protect_from_forgery with: :exception
  require 'timeout'
begin
  status = Timeout::timeout(5) {
    # Something that should be interrupted if it takes too much time...
  }
rescue Timeout::Error
  puts 'That took too long, exiting...'
end

end
