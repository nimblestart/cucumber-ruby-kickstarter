require 'logger'

class CommonLogger
  def self.log
    if @logger.nil?
      @logger = Logger.new STDOUT
      #@logger.level = Logger::INFO
      @logger.level = Logger::DEBUG
      #@logger.level = Logger::ERROR
      @logger.datetime_format = '%Y-%m-%d %H:%M:%S '
    end
    @logger
  end
end