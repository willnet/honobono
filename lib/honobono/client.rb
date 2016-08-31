module Honobono
  class Client
    def self.run(options)
      new(options).run
    end

    def initialize(output_path: nil)
      @output_path = output_path
    end

    def logger
      Logger.new(output)
    end

    def output
      @output_path ? @output_path : STDOUT
    end

    def run
      logger.info "[start] rake #{ARGV[0]}"
      Rake.application.run
      logger.info "[end] rake #{ARGV[0]}"
    end
  end
end
