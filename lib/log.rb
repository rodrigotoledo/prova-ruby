class Log

  LOG_FILE = "log/log_#{Time.now.strftime("%Y-%m-%d")}.txt"

  def initialize
    return if testing?
    create_load_log_file
  end

  def info(values)
    return if testing?
    if @logger.closed?
      create_load_log_file
      puts(values)
    else
      puts(values)
    end
  end

  def close
    return if testing?
    @logger.close
  end

  private

  def create_load_log_file
    if File.exist?(LOG_FILE)
      @logger = File.open(LOG_FILE, File::WRONLY | File::APPEND)
    else
      @logger = File.open(LOG_FILE, File::WRONLY | File::APPEND | File::CREAT)
    end
  end

  def puts(values)
    @logger.puts("==== #{Time.now.strftime("%Y-%m-%d %H:%M:%S")}")
    @logger.puts(values)
  end

  def testing?
    ENV == 'test'
  end

end
