require "space_station/version"

module SpaceStation
  ASCII_PATH = File.join(File.dirname(__FILE__), '/space_station/ascii').freeze

  class Station
    def initialize(app, options = {})
      @app       = app
      @msg       = options.fetch(:msg, nil)
      @ascii_art =
        self.class.name.split('::').last.gsub(/([a-z\d])([A-Z])/,'\1_\2').downcase
    end

    def call(env)
      log_before_response

      @app.call(env)
    end

    protected

    def log_before_response
      to_write = @msg || IO.read("#{SpaceStation::ASCII_PATH}/#{@ascii_art}") rescue ''
      puts to_write
    end
  end

  Dir.entries(ASCII_PATH).select { |f| !File.directory? f }.each do |ascii_file|
    klass      = Class.new(SpaceStation::Station)
    klass_name = ascii_file.to_s.split('_').collect(&:capitalize).join

    SpaceStation.const_set(klass_name, klass)
  end
end
