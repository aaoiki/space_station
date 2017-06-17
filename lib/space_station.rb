require "space_station/version"

module SpaceStation
  ASCII_PATH = File.join(File.dirname(__FILE__), '/space_station/ascii/').freeze

  class SpaceStation
    def initialize(app)
      @app = app
    end

    def call(env)
      write_before_response

      @app.call(env)
    end

    def write_before_response
      ""
    end
  end

  def self.define_all
    # Dir.entries(ASCII_PATH).select { |f| !File.directory? f }.each do |ascii_file|
    #   klass = Class.new(SpaceStation::SpaceStation) do
    #     def write_before_response
    #       puts IO.read("#{ASCII_PATH}/#{ascii_file}")
    #     end
    #   end
    #
    #   SpaceStation.const_set(ascii_file.to_s.split('_').collect(&:capitalize).join, klass)
    # end
  end
end

Dir.entries(SpaceStation::ASCII_PATH).select { |f| !File.directory? f }.each do |ascii_file|
  klass = Class.new(SpaceStation::SpaceStation) do
    def write_before_response
      puts IO.read("#{SpaceStation::ASCII_PATH}/#{ascii_file}")
    end
  end

  SpaceStation.const_set(ascii_file.to_s.split('_').collect(&:capitalize).join, klass)
end

# require 'space_station/airplane'
# require 'space_station/apollo'
# require 'space_station/darth_vader'
# require 'space_station/f16'
# require 'space_station/middle_finger'
# require 'space_station/space_shuttle'
# require 'space_station/ufo'
# require 'space_station/unicorn'
