module Honobono
  class Client
    def self.run
      new.run
    end

    def logger
      Logger.new(log_dir)
    end

    def log_dir
      if File.exist?('config/honobono.yml')
        yaml = YAML.load(File.read('config/honobono.yml'))
        yaml['log_dir']
      else
        '/tmp/honobono.log'
      end
    end

    def run
      logger.info "[start] rake #{ARGV[0]}"
      Rake.application.run
      logger.info "[end] rake #{ARGV[0]}"
    end
  end
end
