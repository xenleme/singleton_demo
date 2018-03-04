require 'singleton'

class Logger
  include Singleton
  
  def initialize
    @f = File.open('log.txt', 'a')
  end

  def log_something(text)
    @f.puts text
  end
end
