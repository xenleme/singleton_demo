class Logger
  def initialize
    @f = File.open('log.txt', 'a')
  end

  @@x = nil

  def self.instance
    if @@x == nil
      @@x = Logger.new
    end

    @@x
  end

  def self.say_something
    puts 'Something...'
  end

  def log_something(what)
    @f.puts what
  end
end

Logger.say_something
Logger.instance.log_something('text')
Logger.instance.log_something('texttext')

logger = Logger.new
logger.log_something('hey!')
