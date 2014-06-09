class Honobono::Client
  def self.run
    new.run
  end

  def run
    log_dir = if File.exists?('config/honobono.yml')
                yaml = YAML.load(File.read('config/honobono.yml'))
                yaml['log_dir']
              else
                '/tmp/honobono.log'
              end
    logger = Logger.new(log_dir)
    logger.info "[start] rake #{ARGV[0]}"
    Rake.application.run
    logger.info "[end] rake #{ARGV[0]}"
  end
end
